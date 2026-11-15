.class public Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
.implements Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;,
        Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;,
        Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$IPCOnConnectChangeListener;
    }
.end annotation


# static fields
.field private static final CONNECT_WAIT_TIME:J = 0xc8L

.field private static final MAX_RETRY_TIMES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "KolunIPCChannel"

.field private static oxygenBusServer:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy<",
            "Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final disconnectRunnable:Ljava/lang/Runnable;

.field private final mApiPublisher:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;

.field private final mBusRemoteConnection:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;

.field private final mChannelName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final realRemoteConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->getInstance()Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;

    move-result-object v0

    new-instance v1, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-direct {v1, p2, v0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;-><init>(Ljava/lang/String;Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->realRemoteConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-virtual {v1, p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->listen(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V

    new-instance p2, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;

    invoke-direct {p2, v1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;-><init>(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)V

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mBusRemoteConnection:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;

    new-instance p2, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;

    invoke-direct {p2, p1, v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;-><init>(Landroid/content/Context;Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mApiPublisher:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;

    new-instance p1, Lng5;

    invoke-direct {p1, p0}, Lng5;-><init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;)V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->disconnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;ZLcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->lambda$requestAsync$1(ZLcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;)Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->realRemoteConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->requestAsync(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->tryAsyncConnectApiInterface(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/content/Context;)Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->isRealConnected(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->lambda$getOxygenBusServer$2()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->lambda$new$0()V

    return-void
.end method

.method private connectApiInterfaceOnce()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
    .locals 4

    const-string v0, "tryConnectApiInterface, connect second time "

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->connectChannel()V

    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->waitApiInterfaceConnect(II)Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryConnectApiInterface, connect success "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static declared-synchronized getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy<",
            "Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->oxygenBusServer:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    new-instance v2, Llg5;

    invoke-direct {v2}, Llg5;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;-><init>(Landroid/os/IInterface;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->oxygenBusServer:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->oxygenBusServer:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isConnected(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    instance-of v1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->isBinderAlive()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private static isRealConnected(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->getRealApiInterface()Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getOxygenBusServer$2()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->oxygenBusServer:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->disconnectChannel()V

    return-void
.end method

.method private synthetic lambda$requestAsync$1(ZLcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiCallback ApiAyncRunnable run in main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;-><init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p3}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private postDisconnectDelay(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->disconnectRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->disconnectRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeRunnable(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->disconnectRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postRunnable(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private requestAsync(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Z)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->autoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokeChain;

    new-instance v0, Lmg5;

    invoke-direct {v0, p0, p5, p4}, Lmg5;-><init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;ZLcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    invoke-interface {p1, p2, p3, v0}, Lcom/transsion/apiinvoke/invoke/api/ApiInterface;->apiInvokeAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method private tryAsyncConnectApiInterface(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->isConnected(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->realRemoteConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-virtual {v0, p1}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->listen(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getInstance()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mBusRemoteConnection:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectRemote(Landroid/content/Context;Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryAsyncConnectApiInterface, connectRemote success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " channelName "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KolunIPCChannel"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;->onConnected(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryConnectApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->isConnected(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;)Z

    move-result v1

    const-string v2, "KolunIPCChannel"

    if-nez v1, :cond_0

    const-string v0, "tryConnectApiInterface, try connect once"

    invoke-static {v2, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->connectApiInterfaceOnce()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryConnectApiInterface connect success "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private waitApiInterfaceConnect(II)Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
    .locals 4

    const-string v0, "KolunIPCChannel"

    if-lt p1, p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "waitApiInterfaceConnect timeout retryTimes "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitApiInterfaceConnect currentTimes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-wide/16 v1, 0x1e

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v1

    if-nez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->waitApiInterfaceConnect(II)Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "waitApiInterfaceConnect getApiInterface success times="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method


# virtual methods
.method public connectChannel()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectChannel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getInstance()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mBusRemoteConnection:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectRemote(Landroid/content/Context;Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->realRemoteConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->onDisconnected(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectChannel, bindServiceAsync  success "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disconnectChannel()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectChannel, mChannelName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getInstance()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->disConnect(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KolunIPCChannel"

    const-string v1, "getApiInterface isBinderAlive == false"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->realRemoteConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->getRealApiInterface()Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    return-object p0
.end method

.method public getApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/apiinvoke/subscribe/Publisher$Host;",
            ")",
            "Lcom/transsion/apiinvoke/invoke/api/ApiPublisher<",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mApiPublisher:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$RemoteApiPublisher;

    return-object p0
.end method

.method public invokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeApi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRouterUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->tryConnectApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotConnect(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->autoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokeChain;

    invoke-interface {v0, p1, p2}, Lcom/transsion/apiinvoke/invoke/api/ApiInterface;->apiInvoke(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->livingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->postDisconnectDelay(J)V

    return-object p2
.end method

.method public invokeApiAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeApiAsync "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRouterUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " livingTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->keepLiving()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;-><init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;->submit(Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;)Ljava/util/concurrent/Future;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->livingTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->postDisconnectDelay(J)V

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->realRemoteConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->getRealApiInterface()Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInChannel(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->findChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    return v0
.end method

.method public onConnected(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onConnected channelName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KolunIPCChannel"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->mChannelName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisconnected channelName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KolunIPCChannel"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
