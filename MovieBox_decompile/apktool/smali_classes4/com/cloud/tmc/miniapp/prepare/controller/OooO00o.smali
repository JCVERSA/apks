.class public Lcom/cloud/tmc/miniapp/prepare/controller/OooO00o;
.super Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 11
    .line 12
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0ooOOo;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 21
    .line 22
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o0OOO0o;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OOO0o;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->setInterceptors(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "warmupType"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->NORMAL_RENDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    const-class v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;->preWarmupWorkerFail()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_RENNDER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ne v0, v1, :cond_3

    .line 61
    .line 62
    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->preWarmupRenderFail()V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->getPrepareData()Lcom/cloud/tmc/integration/model/PrepareData;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public onGetAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->onGetAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
