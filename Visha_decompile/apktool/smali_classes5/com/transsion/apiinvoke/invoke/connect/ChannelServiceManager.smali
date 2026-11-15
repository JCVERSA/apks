.class public Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApiConnected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/invoke/connect/APIConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mApiServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/IApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicServiceInstance:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/IApiService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mDynamicServiceInstance:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiServiceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiConnected:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized connectApiService(Ljava/lang/String;Lcom/transsion/apiinvoke/IApiService;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiConnected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    invoke-direct {v0, p2}, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;-><init>(Lcom/transsion/apiinvoke/IApiService;)V

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->connectServer()V

    iget-object p2, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiConnected:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->getConnectState()Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    move-result-object p1

    sget-object p2, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connected:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    if-eq p1, p2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->getConnectState()Lcom/transsion/apiinvoke/invoke/connect/ConnectState;

    move-result-object p1

    sget-object p2, Lcom/transsion/apiinvoke/invoke/connect/ConnectState;->connecting:Lcom/transsion/apiinvoke/invoke/connect/ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->connectServer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private serviceCreate(Ljava/lang/Class;Lcom/transsion/apiinvoke/common/annotation/RouterApi;)Lcom/transsion/apiinvoke/IApiService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/transsion/apiinvoke/IApiService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/transsion/apiinvoke/common/annotation/RouterApi;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/apiinvoke/invoke/ApiInvokeException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->constructorType()I

    move-result v0

    invoke-interface {p2}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->apiName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mDynamicServiceInstance:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/IApiService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x1

    const/16 p2, 0x198

    if-ne p0, v0, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/IApiService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    const-string p1, "service new instance error..."

    invoke-direct {p0, p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    :try_start_2
    const-string p0, "getInstance"

    invoke-virtual {p1, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/IApiService;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-object p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    const-string p1, "service getInstance error..."

    invoke-direct {p0, p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public connect(Ljava/lang/Class;)Lcom/transsion/apiinvoke/IApiService;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/transsion/apiinvoke/IApiService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/transsion/apiinvoke/IApiService;"
        }
    .end annotation

    const-class v0, Lcom/transsion/apiinvoke/common/annotation/RouterApi;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, [Lcom/transsion/apiinvoke/common/annotation/RouterApi;

    array-length v1, v0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->apiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiServiceMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiServiceMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/apiinvoke/IApiService;

    if-nez v3, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->serviceCreate(Ljava/lang/Class;Lcom/transsion/apiinvoke/common/annotation/RouterApi;)Lcom/transsion/apiinvoke/IApiService;

    move-result-object v3

    instance-of p1, v3, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    if-eqz p1, :cond_0

    move-object p1, v3

    check-cast p1, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/connect/APIConnection;->connectServer()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->apiName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->connectApiService(Ljava/lang/String;Lcom/transsion/apiinvoke/IApiService;)V

    monitor-exit v2

    return-object v3

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    const/16 p1, 0x195

    const-string v0, "service not a valid RouterApi..."

    invoke-direct {p0, p1, v0}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized getConnectApi(Ljava/lang/String;)Lcom/transsion/apiinvoke/IApiService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mApiServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/IApiService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerService(Ljava/lang/String;Lcom/transsion/apiinvoke/IApiService;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mDynamicServiceInstance:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegisterService(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->mDynamicServiceInstance:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
