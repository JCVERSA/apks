.class public Lcom/transsion/apiinvoke/channel/LocalChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;,
        Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;,
        Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;
    }
.end annotation


# instance fields
.field private final mApiInterface:Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;

.field private final mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

.field private final serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    new-instance v0, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    new-instance v0, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;

    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;-><init>(Ljava/lang/String;Lcom/transsion/apiinvoke/channel/LocalChannel$1;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->mApiInterface:Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/channel/LocalChannel;->lambda$invokeApiAsync$0(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;
    .locals 0

    invoke-static {p0}, Lcom/transsion/apiinvoke/channel/LocalChannel;->getLocalApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;

    move-result-object p0

    return-object p0
.end method

.method private static getLocalApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/apiinvoke/subscribe/Publisher$Host;",
            ")",
            "Lcom/transsion/apiinvoke/invoke/api/ApiPublisher<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$invokeApiAsync$0(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public connectChannel()V
    .locals 0

    return-void
.end method

.method public disconnectChannel()V
    .locals 0

    return-void
.end method

.method public getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->mApiInterface:Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;

    return-object p0
.end method

.method public getApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->mApiInterface:Lcom/transsion/apiinvoke/channel/LocalChannel$LocalInvokeHandle;

    return-object p0
.end method

.method public getServiceManager()Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->serviceManager:Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    return-object p0
.end method

.method public invokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/channel/LocalChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotConnect(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/transsion/apiinvoke/invoke/api/ApiInterface;->apiInvoke(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public invokeApiAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/channel/LocalChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotConnect(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lnn5;

    invoke-direct {p0, p3}, Lnn5;-><init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    invoke-interface {v0, p1, p2, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiInterface;->apiInvokeAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method public isInChannel(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->isInChannel(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
