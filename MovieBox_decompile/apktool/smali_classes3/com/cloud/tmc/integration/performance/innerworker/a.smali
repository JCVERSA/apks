.class public final synthetic Lcom/cloud/tmc/integration/performance/innerworker/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

.field public final synthetic b:Lcom/cloud/tmc/kernel/node/Node;

.field public final synthetic c:Lcom/cloud/tmc/kernel/worker/JSI;

.field public final synthetic d:Lcom/cloud/tmc/integration/performance/WarmUpCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->a:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->b:Lcom/cloud/tmc/kernel/node/Node;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->c:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->d:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onWorkerReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->a:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->b:Lcom/cloud/tmc/kernel/node/Node;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->c:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/a;->d:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->a(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
