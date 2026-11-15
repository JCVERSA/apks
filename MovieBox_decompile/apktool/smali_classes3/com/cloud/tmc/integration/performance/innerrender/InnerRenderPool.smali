.class public final Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;
.implements Lcom/cloud/tmc/integration/performance/WarmupExtension;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0006\u001a\u00020\u001c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\u0018H\u0016J\u0008\u0010\u001f\u001a\u00020\u0018H\u0002J\u0012\u0010 \u001a\u00020\u00182\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\"\u0010#\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010%\u001a\u00020\u00182\u0008\u0010&\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\'\u001a\u00020\u00182\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u0012j\u0008\u0012\u0004\u0012\u00020\u0010`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;",
        "Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;",
        "Lcom/cloud/tmc/integration/performance/WarmupExtension;",
        "()V",
        "TAG",
        "",
        "context",
        "Landroid/app/Application;",
        "creatingRender",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "innerRenderWarmupManager",
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;",
        "unUsedRenderQueue",
        "Ljava/util/LinkedList;",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "usedRenderList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "createRender",
        "",
        "sync",
        "destroy",
        "",
        "existRender",
        "frameworkVersion",
        "getRender",
        "Landroid/app/Activity;",
        "init",
        "preWarmupRenderFail",
        "realCreateRender",
        "realWarmupRender",
        "param",
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
        "registerListener",
        "homePage",
        "removeRender",
        "renderId",
        "warmupRender",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/app/Application;

.field private creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

.field private listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

.field private final unUsedRenderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ">;"
        }
    .end annotation
.end field

.field private final usedRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/render/IRender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "InnerWarmup"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->createRender$lambda$0(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCreatingRender$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUnUsedRenderQueue$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->preWarmupRenderFail$lambda$4(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->warmupRender$lambda$3(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final createRender$lambda$0(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->realCreateRender()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final existRender(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 17
    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->warmupSuccess()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_6

    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v4, v3

    .line 44
    :goto_0
    instance-of v5, v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v4, v3

    .line 52
    :goto_1
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->isRenderProcessGone()Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v4, v1

    .line 66
    :goto_2
    if-nez v4, :cond_5

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getFrameworkVersion()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    move v1, v2

    .line 82
    goto :goto_4

    .line 83
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/cloud/tmc/kernel/render/IRender;

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_4
    return v1
.end method

.method private static final preWarmupRenderFail$lambda$4(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 1

    .line 1
    const-string v0, "$render"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final realCreateRender()V
    .locals 9

    .line 1
    new-instance v8, Lcom/cloud/tmc/render/SystemRender;

    .line 2
    .line 3
    new-instance v1, Landroid/content/MutableContextWrapper;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/16 v6, 0x10

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {v8, v0}, Lcom/cloud/tmc/render/SystemRender;->setWarmup(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->createRenderSuccess()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "InnerRenderPool => addRender unUsedRenderQueue = "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    sget-object v2, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->preWarmup(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method private final realWarmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->setDarkTheme(Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "unUsedRenderQueue.last"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    .line 53
    .line 54
    new-instance v2, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;

    .line 55
    .line 56
    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, p1, v2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;->warmUp(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method private static final warmupRender$lambda$3(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->realWarmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public createRender(Z)Z
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "InnerRenderPool => createRender"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 17
    .line 18
    const-string v2, "innerWarmup"

    .line 19
    .line 20
    const-string v3, "{\"innerWarmUpRenderEnable\": true, \"innerWarmUpWorkerEnable\": true, \"renderMaxWarmupSize\": 1, \"workerMaxWarmupSize\": 1}"

    .line 21
    .line 22
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v2, Lcom/cloud/tmc/integration/model/InnerWarmup;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/cloud/tmc/integration/model/InnerWarmup;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpRenderEnable()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    iget-object v4, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getRenderMaxWarmupSize()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ge v4, v5, :cond_0

    .line 53
    .line 54
    iget-object v4, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    move v4, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v4, p1

    .line 65
    :goto_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v7, "InnerRenderPool => createRender ret:"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ", canCreate:"

    .line 83
    .line 84
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", processName:"

    .line 91
    .line 92
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpRenderEnable()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getRenderMaxWarmupSize()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-ge v1, v2, :cond_1

    .line 122
    .line 123
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_1

    .line 130
    .line 131
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/cloud/tmc/integration/performance/innerrender/b;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/cloud/tmc/integration/performance/innerrender/b;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    return v0

    .line 145
    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 146
    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    .line 150
    .line 151
    .line 152
    :cond_2
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 154
    .line 155
    return p1
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "InnerRenderPool => destroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move-object v3, v2

    .line 39
    :goto_1
    instance-of v4, v3, Landroid/content/MutableContextWrapper;

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    move-object v2, v3

    .line 44
    check-cast v2, Landroid/content/MutableContextWrapper;

    .line 45
    .line 46
    :cond_1
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    .line 80
    .line 81
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->innerRenderWarmupManager:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;

    .line 91
    .line 92
    iput-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    .line 93
    .line 94
    return-void
.end method

.method public getRender(Landroid/app/Activity;Ljava/lang/String;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "InnerRenderPool => getRender unUsedRenderQueue = "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    if-lez v0, :cond_b

    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 52
    .line 53
    if-eqz v0, :cond_b

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->warmupSuccess()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne v0, v1, :cond_b

    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/cloud/tmc/kernel/render/IRender;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move-object v4, v3

    .line 77
    :goto_0
    instance-of v5, v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    .line 78
    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object v4, v3

    .line 85
    :goto_1
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->isRenderProcessGone()Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move v4, v2

    .line 99
    :goto_2
    if-nez v4, :cond_a

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getFrameworkVersion()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    move-object v4, v3

    .line 109
    :goto_3
    invoke-virtual {p0, p2, v4}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_a

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->isDarkTheme()Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    move p2, v2

    .line 135
    :goto_4
    if-nez p2, :cond_5

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_5
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_6

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    goto :goto_5

    .line 151
    :cond_6
    move-object p2, v3

    .line 152
    :goto_5
    instance-of v4, p2, Landroid/content/MutableContextWrapper;

    .line 153
    .line 154
    if-eqz v4, :cond_7

    .line 155
    .line 156
    move-object v3, p2

    .line 157
    check-cast v3, Landroid/content/MutableContextWrapper;

    .line 158
    .line 159
    :cond_7
    if-nez v3, :cond_8

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_8
    invoke-virtual {v3, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    :goto_6
    if-nez v0, :cond_9

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_9
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IRender;->setActivity(Landroid/app/Activity;)V

    .line 169
    .line 170
    .line 171
    :goto_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-object v3, v0

    .line 177
    goto :goto_9

    .line 178
    :cond_a
    :goto_8
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 179
    .line 180
    .line 181
    :cond_b
    :goto_9
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v3, :cond_c

    .line 184
    .line 185
    goto :goto_a

    .line 186
    :cond_c
    move v1, v2

    .line 187
    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v0, "InnerRenderPool => getRender success:"

    .line 193
    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object v3
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "render init"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    .line 14
    .line 15
    return-void
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/WarmupExtension$DefaultImpls;->isValid(Lcom/cloud/tmc/integration/performance/WarmupExtension;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public preWarmupRenderFail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "InnerRenderPool => preWarmupFail unUsedRenderQueue = "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "unUsedRenderQueue[lastIndex]"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Lcom/cloud/tmc/kernel/render/IRender;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/c;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/c;-><init>(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public registerListener(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;ZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p3}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->existRender(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupSuccess()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_3

    .line 23
    .line 24
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 25
    .line 26
    :try_start_0
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 33
    .line 34
    const-string p3, "innerWarmupSetting"

    .line 35
    .line 36
    const-string v0, "{\"renderWaitTime\":1500,\"workerWaitTime\":1500}"

    .line 37
    .line 38
    invoke-interface {p1, p3, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-class p3, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    .line 43
    .line 44
    invoke-static {p1, p3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;->getRenderWaitTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-wide/16 p1, 0x0

    .line 58
    .line 59
    :goto_0
    new-instance p3, Ljava/util/Timer;

    .line 60
    .line 61
    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    const/4 p2, 0x4

    .line 78
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->listener:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 p2, 0x0

    .line 86
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method

.method public removeRender(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "InnerRenderPool => removeRender renderId = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move-object v2, v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/cloud/tmc/kernel/render/IRender;

    .line 42
    .line 43
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    move-object v2, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-eqz v2, :cond_5

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object p1, v1

    .line 69
    :goto_1
    instance-of v0, p1, Landroid/content/MutableContextWrapper;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    move-object v1, p1

    .line 74
    check-cast v1, Landroid/content/MutableContextWrapper;

    .line 75
    .line 76
    :cond_3
    if-nez v1, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->context:Landroid/app/Application;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->usedRenderList:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_5
    return-void
.end method

.method public warmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->creatingRender:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->unUsedRenderQueue:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "InnerRenderPool => warmupRender unUsedRenderQueue = "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " , canWarmup:"

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/cloud/tmc/integration/performance/innerrender/a;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/integration/performance/innerrender/a;-><init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
