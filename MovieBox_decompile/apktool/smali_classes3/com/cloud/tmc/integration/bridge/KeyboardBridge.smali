.class public Lcom/cloud/tmc/integration/bridge/KeyboardBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyboardBridge"


# instance fields
.field private final eventSubscriber:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/integration/bridge/KeyboardBridge$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge$1;-><init>(Lcom/cloud/tmc/integration/bridge/KeyboardBridge;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->eventSubscriber:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/bridge/KeyboardBridge;Lcom/cloud/tmc/integration/structure/App;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->getPages(Lcom/cloud/tmc/integration/structure/App;)Ljava/util/WeakHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getPages(Lcom/cloud/tmc/integration/structure/App;)Ljava/util/WeakHashMap;
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            ")",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/model/KeyboardCache;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/cloud/tmc/integration/model/KeyboardCache;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/KeyboardCache;->getPageCache()Ljava/util/WeakHashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
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

.method public checkEventSubscriber(Lcom/cloud/tmc/integration/structure/App;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "checkEventSubscriber: register="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    const-string v2, "Just print"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "KeyboardBridge"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const-string v0, "onKeyboardHeightChange"

    .line 58
    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->containsEventKey(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->eventSubscriber:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 68
    .line 69
    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->eventSubscriber:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 74
    .line 75
    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    return-void
.end method

.method public hideKeyboard(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
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
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public offKeyboardHeightChange(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->getPages(Lcom/cloud/tmc/integration/structure/App;)Ljava/util/WeakHashMap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz p3, :cond_2

    .line 32
    .line 33
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void

    .line 37
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 38
    .line 39
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 40
    .line 41
    .line 42
    :cond_4
    return-void
.end method

.method public onFinalized()V
    .locals 2

    .line 1
    const-string v0, "KeyboardBridge"

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
    const-string v0, "KeyboardBridge"

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

.method public onKeyboardHeightChange(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/Page;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
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
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->getPages(Lcom/cloud/tmc/integration/structure/App;)Ljava/util/WeakHashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/bridge/KeyboardBridge;->checkEventSubscriber(Lcom/cloud/tmc/integration/structure/App;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 54
    .line 55
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
