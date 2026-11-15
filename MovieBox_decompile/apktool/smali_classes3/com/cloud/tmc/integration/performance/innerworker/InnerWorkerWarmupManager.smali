.class public final Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J*\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;",
        "",
        "()V",
        "preWarmup",
        "",
        "context",
        "Landroid/content/Context;",
        "warmupType",
        "",
        "warmup",
        "worker",
        "Lcom/cloud/tmc/kernel/worker/JSI;",
        "param",
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
        "warmUpCallback",
        "Lcom/cloud/tmc/integration/performance/WarmUpCallback;",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;",
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


# virtual methods
.method public final preWarmup(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/integration/point/WarmupPoint;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/integration/point/WarmupPoint;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/point/WarmupPoint;->start(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final warmup(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;)V
    .locals 11

    .line 1
    const-string v0, "worker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "warmUpCallback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->getFrameworkVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/worker/JSI;->setFrameworkVersion(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-class p2, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "worker.workerId"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, v0}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v8, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v2, v8

    .line 55
    move-object v3, p1

    .line 56
    move-object v5, p4

    .line 57
    move-object v6, p3

    .line 58
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;-><init>(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    const/4 v9, 0x3

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v5, p2

    .line 65
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 66
    .line 67
    .line 68
    return-void
.end method
