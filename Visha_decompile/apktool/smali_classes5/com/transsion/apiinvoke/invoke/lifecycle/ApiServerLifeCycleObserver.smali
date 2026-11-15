.class public Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lifyCycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onConnectTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;->onError(ILjava/lang/String;)V

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

.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;

    invoke-interface {v1}, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;->onConnected()V

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

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;

    invoke-interface {v1}, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;->onDisConnected()V

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

.method public declared-synchronized registerLifeCycle(Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized unRegisterLifeCycle(Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/lifecycle/ApiServerLifeCycleObserver;->lifyCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
