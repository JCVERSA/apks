.class public final Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager;->bindWarmupListener(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/kernel/node/Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1",
        "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;",
        "onEvent",
        "",
        "event",
        "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;",
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


# instance fields
.field final synthetic $eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field final synthetic $render:Lcom/cloud/tmc/kernel/render/IRender;

.field final synthetic $warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$render:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$render:Lcom/cloud/tmc/kernel/render/IRender;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v0

    .line 17
    :goto_0
    instance-of v1, p1, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 23
    .line 24
    :cond_1
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/tmc/render/system/SystemWebView;->getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->registerMessageChannel()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const-string v0, "renderOnMessageReady"

    .line 40
    .line 41
    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    const-class p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/cloud/tmc/integration/structure/WarmupNode;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$render:Lcom/cloud/tmc/kernel/render/IRender;

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "render.renderId"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/WarmupNode;->removeNode(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/render/RenderWarmupManager$bindWarmupListener$1;->$warmUpCallback:Lcom/cloud/tmc/integration/performance/WarmUpCallback;

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/performance/WarmUpCallback;->warmupResult(Z)V

    .line 70
    .line 71
    .line 72
    return v0
.end method
