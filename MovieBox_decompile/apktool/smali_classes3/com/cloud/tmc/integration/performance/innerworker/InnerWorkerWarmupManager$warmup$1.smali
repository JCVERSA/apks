.class final Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;->warmup(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.integration.performance.innerworker.InnerWorkerWarmupManager$warmup$1"
    f = "InnerWorkerWarmupManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

.field final synthetic $warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

.field final synthetic $warmupNode:Lcom/cloud/tmc/kernel/node/Node;

.field final synthetic $worker:Lcom/cloud/tmc/kernel/worker/JSI;

.field label:I


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/worker/JSI;",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;",
            "Lcom/cloud/tmc/integration/performance/WarmUpCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$warmupNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->invokeSuspend$lambda$0(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->createWorkerSuccess()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const-class p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;

    .line 21
    .line 22
    invoke-direct {v1, p2, p0, p1, p3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1$1$1;-><init>(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    .line 23
    .line 24
    .line 25
    const-string p0, "workerOnMessageReady"

    .line 26
    .line 27
    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string p0, "100000"

    .line 31
    .line 32
    const-string p1, "https://100000.miniapp.transsion.com/master.js"

    .line 33
    .line 34
    invoke-interface {p2, p0, p1}, Lcom/cloud/tmc/kernel/worker/JSI;->loadJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$warmupNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;-><init>(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->setRenderReady()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 17
    .line 18
    const-string v0, "99999"

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/worker/JSI;->setAppId(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$warmupNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/worker/JSI;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$worker:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$warmupNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager$warmup$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    .line 37
    .line 38
    new-instance v3, Lcom/cloud/tmc/integration/performance/innerworker/a;

    .line 39
    .line 40
    invoke-direct {v3, v0, v1, p1, v2}, Lcom/cloud/tmc/integration/performance/innerworker/a;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v3}, Lcom/cloud/tmc/kernel/worker/JSI;->registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method
