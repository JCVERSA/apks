.class Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

.field final synthetic val$jo:Lcom/google/gson/JsonObject;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/utils/EngineUtils$2;Lcom/google/gson/JsonObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->val$jo:Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onWorkerReady()V
    .locals 4

    .line 1
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
    iget-object v1, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 18
    .line 19
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->this$0:Lcom/cloud/tmc/kernel/utils/EngineUtils$2;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$finalWorker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2$1;->val$jo:Lcom/google/gson/JsonObject;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/cloud/tmc/kernel/utils/EngineUtils$2;->val$h5CallBack:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    .line 31
    .line 32
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/worker/JSI;->sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
