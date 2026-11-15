.class public Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;
.implements Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager$InterceptorManagerHolder;
    }
.end annotation


# instance fields
.field private interceptor2s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;",
            ">;"
        }
    .end annotation
.end field

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptor2s:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;
    .locals 1

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager$InterceptorManagerHolder;->access$000()Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addInterceptor(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addInterceptor2(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptor2s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptor2s:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processChain(Lcom/transsion/apiinvoke/invoke/InvokeChain;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

    invoke-interface {v1, p1}, Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;->processChain(Lcom/transsion/apiinvoke/invoke/InvokeChain;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processChainV2(Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

    invoke-interface {v1, p1}, Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;->processChain(Lcom/transsion/apiinvoke/invoke/InvokeChain;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onInterceptorDined(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeInterceptor(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptors:Ljava/util/List;

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

.method public removeInterceptor2(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptor2s:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->interceptor2s:Ljava/util/List;

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
