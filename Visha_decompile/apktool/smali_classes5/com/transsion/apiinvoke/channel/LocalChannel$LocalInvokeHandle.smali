.class Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
.implements Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/channel/LocalChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalInvokeHandle"
.end annotation


# instance fields
.field private channel:Ljava/lang/String;

.field private serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    .line 4
    iput-object p1, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->channel:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/apiinvoke/channel/LocalChannel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getApiServiceImpl(Lcom/transsion/apiinvoke/IApiService;)Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;
    .locals 1

    instance-of p0, p1, Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;

    return-object p1

    :cond_0
    new-instance p0, Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;-><init>(Lcom/transsion/apiinvoke/IApiService;Lcom/transsion/apiinvoke/channel/LocalChannel$1;)V

    return-object p0
.end method


# virtual methods
.method public apiInvoke(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    invoke-virtual {v1, v0}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->getConnectApi(Ljava/lang/String;)Lcom/transsion/apiinvoke/IApiService;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->connectToApiService(Ljava/lang/String;)Lcom/transsion/apiinvoke/IApiService;

    move-result-object v1
    :try_end_0
    .catch Lcom/transsion/apiinvoke/invoke/ApiInvokeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "service is NULL"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-direct {p0, v1}, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->getApiServiceImpl(Lcom/transsion/apiinvoke/IApiService;)Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/transsion/apiinvoke/invoke/api/ApiInterface;->apiInvoke(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x194

    invoke-direct {p0, p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x198

    invoke-direct {p0, p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/transsion/apiinvoke/invoke/ApiInvokeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onException(Lcom/transsion/apiinvoke/invoke/ApiInvokeException;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public apiInvokeAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3

    new-instance v0, Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;

    invoke-direct {v0, p1, p3}, Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    invoke-virtual {v1, p3}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->getConnectApi(Ljava/lang/String;)Lcom/transsion/apiinvoke/IApiService;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->connectToApiService(Ljava/lang/String;)Lcom/transsion/apiinvoke/IApiService;

    move-result-object v1
    :try_end_0
    .catch Lcom/transsion/apiinvoke/invoke/ApiInvokeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "service is NULL"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-direct {p0, v1}, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->getApiServiceImpl(Lcom/transsion/apiinvoke/IApiService;)Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/apiinvoke/invoke/api/ApiInterface;->apiInvokeAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x194

    invoke-direct {p0, p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x198

    invoke-direct {p0, p2, p1}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/transsion/apiinvoke/invoke/ApiInvokeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onException(Lcom/transsion/apiinvoke/invoke/ApiInvokeException;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :goto_2
    return-void
.end method

.method public connectToApiService(Ljava/lang/String;)Lcom/transsion/apiinvoke/IApiService;
    .locals 3

    invoke-static {p1}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getApiEntity(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/APIClassEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, v0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->serviceClass:Ljava/lang/Class;

    if-nez p1, :cond_0

    new-instance v0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    const/16 v1, 0x196

    const-string v2, "not found entity.apiHandle"

    invoke-direct {v0, v1, v2}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    :cond_0
    const-class v0, Lcom/transsion/apiinvoke/IApiService;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;->serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->connect(Ljava/lang/Class;)Lcom/transsion/apiinvoke/IApiService;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    const/16 p1, 0x195

    const-string v0, "not a valid IApiService"

    invoke-direct {p0, p1, v0}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api not registered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x194

    invoke-direct {p0, v0, p1}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    .locals 0

    iget-object p0, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/transsion/apiinvoke/channel/LocalChannel;->access$200(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;->publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    new-instance p0, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;

    const/16 p1, 0x19d

    const-string p2, "publish error"

    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/invoke/ApiInvokeException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
