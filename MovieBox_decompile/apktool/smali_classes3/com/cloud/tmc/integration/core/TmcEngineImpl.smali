.class public Lcom/cloud/tmc/integration/core/TmcEngineImpl;
.super Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcEngineImpl"

.field private static final UC_INIT_FAIL:Ljava/lang/String; = "uc core init fail"

.field private static final UC_INIT_FAIL_CODE:Ljava/lang/String; = "-9001"

.field private static final UC_INIT_SUCCESS:Ljava/lang/String; = "uc init success"

.field private static final sWorkerIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mRenderChannelThread:Landroid/os/HandlerThread;

.field private mWorker:Lcom/cloud/tmc/kernel/worker/JSI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->sWorkerIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 6
    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    .line 8
    .line 9
    const-string p2, "TmcRenderChannelThread"

    .line 10
    .line 11
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mRenderChannelThread:Landroid/os/HandlerThread;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private createJSIWorker(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    new-instance v1, Lcom/cloud/tmc/worker/WorkerManager;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/cloud/tmc/worker/WorkerManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p3}, Lcom/cloud/tmc/kernel/worker/JSI;->setWorkerId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-class v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1, p3, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->registerWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception p1

    .line 39
    move-object v0, v1

    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p1

    .line 42
    :goto_1
    const-string p2, "TmcEngineImpl"

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string p3, "errorMessage"

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-object v1, v0

    .line 62
    :goto_2
    return-object v1
.end method

.method public static generateWorkerId()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->sWorkerIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method


# virtual methods
.method public createRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    .line 8
    .line 9
    const-string v1, "Render"

    .line 10
    .line 11
    const-string v2, "Start create render"

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;->sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, p2

    .line 17
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page;

    .line 18
    .line 19
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/cloud/tmc/render/SystemRender;

    .line 25
    .line 26
    invoke-direct {v0, p1, p0, p2, p3}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public createWorker(Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .locals 2

    .line 1
    const-class p1, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;

    .line 8
    .line 9
    const-string v0, "Worker"

    .line 10
    .line 11
    const-string v1, "register worker"

    .line 12
    .line 13
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;->sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->generateWorkerId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    .line 28
    .line 29
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/cloud/tmc/integration/structure/App;

    .line 34
    .line 35
    new-instance v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-class v1, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 41
    .line 42
    invoke-interface {p2, v1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p2, 0x0

    .line 47
    :goto_0
    invoke-direct {p0, p2, p3, p1}, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->createJSIWorker(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 52
    .line 53
    return-object p1
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getTopRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getWorkerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    const-string v0, "uc init success"

    .line 11
    .line 12
    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/kernel/engine/EngineInitCallback;->initResult(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->fromWarmup()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->removeWorker(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/cloud/tmc/kernel/coreimpl/BaseEngineImpl;->onDestroy()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mRenderChannelThread:Landroid/os/HandlerThread;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    const-string v1, "mRenderChannelThread quit error"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method public setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/engine/EngineSetupCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateWorker(Lcom/cloud/tmc/kernel/worker/JSI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/core/TmcEngineImpl;->mWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 2
    .line 3
    return-void
.end method
