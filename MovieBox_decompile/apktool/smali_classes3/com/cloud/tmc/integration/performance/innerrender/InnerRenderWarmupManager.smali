.class public final Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0007\u001a\u00020\u0008J \u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;",
        "",
        "()V",
        "bindWarmupListener",
        "",
        "render",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "warmUpCallback",
        "Lcom/cloud/tmc/integration/performance/WarmUpCallback;",
        "warmupNode",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "preWarmup",
        "context",
        "Landroid/content/Context;",
        "warmupType",
        "",
        "warmUp",
        "param",
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
        "warmup",
        "warmupRenderId",
        "",
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

.method private final bindWarmupListener(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 8
    .line 9
    invoke-interface {v0, p3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$bindWarmupListener$1;

    .line 16
    .line 17
    invoke-direct {v0, p1, p3, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$bindWarmupListener$1;-><init>(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "renderOnMessageReady"

    .line 21
    .line 22
    invoke-interface {p3, p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final warmup(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultEngineRouter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "99999"

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupAppId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p3}, Lcom/cloud/tmc/kernel/render/IRender;->init(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 21
    .line 22
    invoke-direct {p2}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p3, "https://100000.miniapp.transsion.com/index.html"

    .line 26
    .line 27
    iput-object p3, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final preWarmup(Landroid/content/Context;I)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$preWarmup$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p2, v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager$preWarmup$1;-><init>(Landroid/content/Context;ILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final warmUp(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 2

    .line 1
    const-string v0, "render"

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
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->setFrameworkVersion(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lcom/cloud/tmc/integration/performance/WarmupUtils;->INSTANCE:Lcom/cloud/tmc/integration/performance/WarmupUtils;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/performance/WarmupUtils;->getWarmupRenderId()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "warmup_render_id__"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-class v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 57
    .line 58
    invoke-interface {v0, p2}, Lcom/cloud/tmc/integration/structure/WarmupNode;->getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p0, p1, p3, v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->bindWarmupListener(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/kernel/node/Node;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1, v0, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->warmup(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
