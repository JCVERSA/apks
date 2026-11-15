.class public abstract Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/engine/IEngine;


# instance fields
.field protected initParams:Lcom/cloud/tmc/kernel/model/InitParams;

.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

.field private mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

.field private mNode:Lcom/cloud/tmc/kernel/node/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mAppId:Ljava/lang/String;

    .line 10
    .line 11
    const-class p1, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/service/EnvironmentService;->getApplicationContext()Landroid/app/Application;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->bindEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method protected createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;->createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->onDestroy()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/NativeBridge;->release()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/kernel/engine/EngineStack;->getInstance()Lcom/cloud/tmc/kernel/engine/EngineStack;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/kernel/engine/EngineStack;->removeProxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    throw v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mAppId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApplication()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEngineType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "WEB"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->initParams:Lcom/cloud/tmc/kernel/model/InitParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/cloud/tmc/kernel/model/InitParams;->startParams:Landroid/os/Bundle;

    .line 8
    .line 9
    return-object v0
.end method

.method public getTopRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getRenderById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->initParams:Lcom/cloud/tmc/kernel/model/InitParams;

    .line 2
    .line 3
    const-class p2, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 10
    .line 11
    iget-wide v0, p1, Lcom/cloud/tmc/kernel/model/InitParams;->startToken:J

    .line 12
    .line 13
    invoke-interface {p2, v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/kernel/engine/EngineStack;->getInstance()Lcom/cloud/tmc/kernel/engine/EngineStack;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, p0}, Lcom/cloud/tmc/kernel/engine/EngineStack;->pushEnginePorxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mDestroyed:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->destroy()V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->remove(Lcom/cloud/tmc/kernel/engine/EngineRouter;)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setNativeBridge(Lcom/cloud/tmc/kernel/bridge/NativeBridge;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/kernel/bridge/NativeBridge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->mEngineBridge:Lcom/cloud/tmc/kernel/bridge/NativeBridge;

    .line 2
    .line 3
    return-void
.end method
