.class public Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;
.super Lcom/transsion/apiinvoke/ipc/APIPublisher$Stub;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;


# instance fields
.field protected final mStateChangeObserver:Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/APIPublisher$Stub;-><init>()V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub$1;

    invoke-direct {v0, p0}, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub$1;-><init>(Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;->mStateChangeObserver:Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver;

    return-void
.end method


# virtual methods
.method public findLocalSubscribeTypeCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->countLocalSubscribe(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p1
.end method

.method public getLocalSubscribeTypes()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getAllSubscribeHostInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;

    invoke-virtual {p0, v3}, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;->parseSubscribeHostInfo(Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "1.5.135"

    return-object p0
.end method

.method public getSubscribeStateChangeObserver()Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;->mStateChangeObserver:Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver;

    return-object p0
.end method

.method public onPublishData(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;)V
    .locals 2

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;-><init>(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;->onPublishDataWithChain(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)V

    return-void
.end method

.method public onPublishDataWithChain(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;->getPublishData()Lcom/transsion/apiinvoke/subscribe/PublishData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/subscribe/PublishData;->getPublisher()Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/subscribe/PublishData;->getData()Ljava/io/Serializable;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;->publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public parseSubscribeHostInfo(Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;)Ljava/lang/String;
    .locals 5

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "host"

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->getHost()Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;->getSubscribeTypes()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    iget-object v4, v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subscribeCount"

    iget v1, v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;->subscribeCount:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "typeCounts"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    .locals 0

    :try_start_0
    iget-object p0, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-static {p0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
