.class public final Lcom/transsion/apiinvoke/common/router/ApiRouterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REGISTER_CHANNEL_METHOD:Ljava/lang/String; = "loadApiChannels"

.field private static final REGISTER_MANAGER_METHOD:Ljava/lang/String; = "loadApiRouters"

.field private static channelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/ChannelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile instance:Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

.field private static registerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static routerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/APIClassEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->registerList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalChannel(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->createLocalChannel(Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addNewChannel(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 3

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static findChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 7

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getApiEntity(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/APIClassEntity;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;

    return-object p0
.end method

.method public static getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    return-object p0
.end method

.method public static getChannelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/ChannelEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/apiinvoke/common/router/ApiRouterManager;
    .locals 2

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->instance:Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->instance:Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

    invoke-direct {v1}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;-><init>()V

    sput-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->instance:Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->instance:Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

    return-object v0
.end method

.method public static getRouterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/APIClassEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    return-object v0
.end method

.method public static isInService(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static listRegisterChannel()V
    .locals 6

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "ApiRouterManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel  ==>>  channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " entity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static listRegisterServer()V
    .locals 6

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "ApiRouterManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "api ==>>  key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " entity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->registerApiRouter(Ljava/lang/Class;)V

    .line 6
    invoke-static {p0}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->registerChannel(Ljava/lang/Class;)V

    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->register(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static register(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->register(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static registerApi(Ljava/lang/Class;)V
    .locals 7

    const-class v0, Lcom/transsion/apiinvoke/common/annotation/RouterApi;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, [Lcom/transsion/apiinvoke/common/annotation/RouterApi;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->apiName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->constructorType()I

    move-result v4

    invoke-interface {v0}, Lcom/transsion/apiinvoke/common/annotation/RouterApi;->livingTime()J

    move-result-wide v5

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->createLocalServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;IJ)Lcom/transsion/apiinvoke/common/router/APIClassEntity;

    move-result-object p0

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->apiName:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static registerApiRouter(Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->registerList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->registerList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "loadApiRouters"

    const-class v2, Ljava/util/Map;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->routerMap:Ljava/util/Map;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p0, "ApiRouterManager"

    const-string v1, "init success "

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static registerChannel(Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v1, "loadApiChannels"

    const-class v2, Ljava/util/Map;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sget-object v1, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->channelMap:Ljava/util/Map;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p0, "ApiRouterManager"

    const-string v1, "init success "

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
