.class public final Lcom/cloud/tmc/integration/performance/worker/WorkerWarmupManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J \u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/worker/WorkerWarmupManager;",
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

.method public final warmup(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 8

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
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->getFrameworkVersion()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p2, v0

    .line 20
    :goto_0
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/worker/JSI;->setFrameworkVersion(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-class p2, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "worker.workerId"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, v1}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v5, Lcom/cloud/tmc/integration/performance/worker/WorkerWarmupManager$warmup$1;

    .line 53
    .line 54
    invoke-direct {v5, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/performance/worker/WorkerWarmupManager$warmup$1;-><init>(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x3

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 62
    .line 63
    .line 64
    return-void
.end method
