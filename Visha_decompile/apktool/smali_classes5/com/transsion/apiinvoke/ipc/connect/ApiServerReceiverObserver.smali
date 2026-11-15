.class public Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/connect/ApiMessageReceiver;


# instance fields
.field private mExecute:Ljava/util/concurrent/ExecutorService;

.field private mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/ipc/connect/ApiMessageReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->mReceivers:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->mExecute:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->lambda$onReceiveMessage$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onReceiveMessage$0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->notifyMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public notifyMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->mReceivers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->mReceivers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/ipc/connect/ApiMessageReceiver;

    invoke-interface {v1, p1, p2}, Lcom/transsion/apiinvoke/ipc/connect/ApiMessageReceiver;->onReceiveMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->mExecute:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lce;

    invoke-direct {v1, p0, p1, p2}, Lce;-><init>(Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->notifyMessageReceive(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public registerReceiver(Lcom/transsion/apiinvoke/ipc/connect/ApiMessageReceiver;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->mReceivers:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unRegisterReceiver(Lcom/transsion/apiinvoke/ipc/connect/ApiMessageReceiver;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiServerReceiverObserver;->mReceivers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
