.class public Lcom/transsion/apiinvoke/invoke/ApiRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3cb97f087527fa26L


# instance fields
.field private final mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

.field private final mRouterUri:Lcom/transsion/apiinvoke/invoke/RouterUri;


# direct methods
.method private constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    .line 4
    new-instance v0, Lcom/transsion/apiinvoke/invoke/RouterUri;

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$000(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$100(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/transsion/apiinvoke/invoke/RouterUri;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mRouterUri:Lcom/transsion/apiinvoke/invoke/RouterUri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;Lcom/transsion/apiinvoke/invoke/ApiRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->lambda$invokeAsync$0(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method

.method private static createParameter(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->empty()Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/TypeValuePair;->createNoNull(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    return-object p0
.end method

.method private foundRequestChannel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$000(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->findChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$202(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$invokeAsync$0(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceEnd(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method private traceEnd(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 1

    invoke-static {}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->getInstance()Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->traceEnd(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method private tracePublish(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    invoke-static {}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->getInstance()Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->tracePublish(Lcom/transsion/apiinvoke/invoke/ApiRequest;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method private traceStart(Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->getInstance()Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->traceRequest(Lcom/transsion/apiinvoke/invoke/ApiRequest;Z)V

    return-void
.end method


# virtual methods
.method public clearRetryOnReConnect()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$502(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;Z)Z

    return-void
.end method

.method public connect(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 2

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$300(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findRemoteChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotFound(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->connectChannel()V

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    const-string v0, "connect failed"

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onError(ILjava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    :goto_1
    invoke-interface {p1, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_4
    return-void
.end method

.method public getApiMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mRouterUri:Lcom/transsion/apiinvoke/invoke/RouterUri;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/RouterUri;->getApiMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mRouterUri:Lcom/transsion/apiinvoke/invoke/RouterUri;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/RouterUri;->getApiName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/TypeValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$400(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRequestParameter()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$400(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$400(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$400(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    return-object p0
.end method

.method public getRouterUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mRouterUri:Lcom/transsion/apiinvoke/invoke/RouterUri;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/RouterUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypeValues()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRequestParameter()[Lcom/transsion/apiinvoke/invoke/TypeValuePair;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized invoke()Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceStart(Z)V

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$000(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotFound(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceEnd(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->invokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceEnd(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized invokeAsync(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceStart(Z)V

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$000(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotFound(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceEnd(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v1

    new-instance v2, Lbe;

    invoke-direct {v2, p0, p1}, Lbe;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    invoke-interface {v0, p0, v1, v2}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->invokeApiAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public keepLiving()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$600(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method public livingTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->keepLiving()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$700(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$300(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized publishData(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->tracePublish(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$000(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getAllChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p2, "ApiRequest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishData, channels == 0, matcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotConnect(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceEnd(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :try_start_1
    const-string v1, "ApiRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channels size , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v3, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v3}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$200(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {v4}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$000(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    instance-of v7, v6, Lcom/transsion/apiinvoke/channel/LocalChannel;

    if-eqz v7, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v2

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    invoke-interface {v5, v1}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->getApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    :try_start_4
    invoke-static {v1, p1}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object v6

    invoke-interface {v5, v6, v0, p2}, Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;->publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V

    const-string v6, "ApiRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "do publishData to local, matcher = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_5
    const-string v7, "ApiRequest"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    invoke-interface {v4, v1}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->getApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, v5, :cond_5

    invoke-static {v1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object v6

    invoke-virtual {v6, v4, v0, p1, p2}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->publishToChannel(Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/lang/String;Ljava/io/Serializable;)Z

    const-string v4, "ApiRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do publishData to remote "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->traceEnd(Lcom/transsion/apiinvoke/invoke/ApiResponse;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public retryOnReConnect()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mBuilder:Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;->access$500(Lcom/transsion/apiinvoke/invoke/ApiRequest$Builder;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/ApiRequest;->mRouterUri:Lcom/transsion/apiinvoke/invoke/RouterUri;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/RouterUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
