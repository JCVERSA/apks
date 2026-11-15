.class public Lcom/cloud/tmc/miniapp/prepare/controller/OooO0OO;
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
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 11
    .line 12
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;-><init>()V

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
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0o;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0o;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 31
    .line 32
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 41
    .line 42
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 51
    .line 52
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00O0O;

    .line 53
    .line 54
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00O0O;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->setInterceptors(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
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
