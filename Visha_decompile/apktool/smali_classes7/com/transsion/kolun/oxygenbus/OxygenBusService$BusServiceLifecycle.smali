.class public Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/OxygenBusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusServiceLifecycle"
.end annotation


# instance fields
.field private currentState:I

.field private final isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mWaitingConnect:Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance p2, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;-><init>(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mWaitingConnect:Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->updateState(I)V

    return-void
.end method

.method private dispatchStateChange(I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateState(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mWaitingConnect:Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;

    invoke-virtual {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mWaitingConnect:Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;

    invoke-virtual {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mWaitingConnect:Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->access$900(Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mWaitingConnect:Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchStateChange oldState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->currentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OxygenBusService"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->currentState:I

    invoke-direct {p0, p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->dispatchStateChange(I)V

    return-void
.end method


# virtual methods
.method public addOxygenBusStateChangeListener(Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onOxygenBusServerStateChange(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->currentState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOxygenBusServerStateChange connected  state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->currentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OxygenBusService"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->dispatchStateChange(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeOxygenBusStateChangeListener(Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 4

    const-string v0, "OxygenBusService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchStateChange run size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    iget v3, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->currentState:I

    invoke-interface {v2, v3}, Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;->onOxygenBusServerStateChange(I)V

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

.method public startListen()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isOxygenBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->mWaitingConnect:Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
