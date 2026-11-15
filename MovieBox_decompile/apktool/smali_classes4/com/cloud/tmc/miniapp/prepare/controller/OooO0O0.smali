.class public Lcom/cloud/tmc/miniapp/prepare/controller/OooO0O0;
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
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->setInterceptors(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 2
    .line 3
    .line 4
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
