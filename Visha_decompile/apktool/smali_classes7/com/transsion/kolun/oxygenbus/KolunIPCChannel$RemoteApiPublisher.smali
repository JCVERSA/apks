.class Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteApiPublisher"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRemoteInterceptor:Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;

.field private subscribeCenterVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;

    invoke-direct {p1, p2}, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;-><init>(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->mRemoteInterceptor:Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;

    return-void
.end method

.method private appendChain(Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/subscribe/Publisher;)V
    .locals 1

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/subscribe/Publisher;->getChannel()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p2, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v0, v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->apiName:Ljava/lang/String;

    iget-object p2, p2, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/transsion/apiinvoke/invoke/InvokePath;->createPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->put(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    return-void
.end method

.method private declared-synchronized subscribeCenterSupportChain(Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->subscribeCenterVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;->getServiceVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->subscribeCenterVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    :try_start_2
    const-string p1, "KolunIPCChannel"

    const-string v1, "subscribeCenterSupportChain getServiceVersion error "

    invoke-static {p1, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->subscribeCenterVersion:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->subscribeCenterVersion:Ljava/lang/String;

    const-string v1, "1.5.00"

    invoke-static {p1, v1}, Lcom/transsion/apiinvoke/ipc/utils/ApiInvokeUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    monitor-exit p0

    return v0

    :cond_4
    monitor-exit p0

    return v0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;->getSubscribeCenter()Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "KolunIPCChannel"

    const-string p1, "subscribeCenter == NULL"

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lcom/transsion/apiinvoke/subscribe/PublishData;->create(Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)Lcom/transsion/apiinvoke/subscribe/PublishData;

    move-result-object p3

    invoke-direct {p0, v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->subscribeCenterSupportChain(Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->appendChain(Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/subscribe/Publisher;)V

    new-instance p1, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;

    invoke-direct {p1, p3}, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;-><init>(Lcom/transsion/apiinvoke/subscribe/PublishData;)V

    new-instance p3, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;

    invoke-direct {p3, p2}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;-><init>(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;->mRemoteInterceptor:Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;

    invoke-interface {v0, p1, p3, p0}, Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;->onSafePublishData(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;

    invoke-direct {p0, p3}, Lcom/transsion/apiinvoke/ipc/ParcelPublishData;-><init>(Lcom/transsion/apiinvoke/subscribe/PublishData;)V

    invoke-interface {v0, p0}, Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;->onPublishData(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
