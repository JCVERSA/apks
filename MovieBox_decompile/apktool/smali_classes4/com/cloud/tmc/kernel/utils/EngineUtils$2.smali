.class Lcom/cloud/tmc/kernel/utils/EngineUtils$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/utils/EngineUtils;->sendPushWorkMessage(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

.field final synthetic val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

.field final synthetic val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/worker/JSI;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$messageId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->isDestroyed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "TmcEngine:EngineUtils"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "sendPushWorkerMessage but worker destroyed!"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$messageId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v2, v0, v1}, Lcom/cloud/tmc/kernel/utils/EngineUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, " workerReady: "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 41
    .line 42
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/worker/JSI;->isWorkerReady()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->isWorkerReady()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    .line 67
    .line 68
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 81
    .line 82
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 87
    .line 88
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 94
    .line 95
    new-instance v2, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;

    .line 96
    .line 97
    invoke-direct {v2, p0, v0}, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;-><init>(Lcom/cloud/tmc/kernel/utils/EngineUtils$2;Lcom/google/gson/JsonObject;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/worker/JSI;->registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method
