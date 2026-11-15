.class public Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;
.super Lcom/transsion/apiinvoke/ipc/IRemoteAPIConnection$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;,
        Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RealRemoteConnection"


# instance fields
.field private final mChannelName:Ljava/lang/String;

.field private final mConnectedStateChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptor:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IRemoteAPIConnection$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mInterceptor:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->lambda$onConnected$0()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->lambda$onConnected$1()V

    return-void
.end method

.method public static getRealApiInterface(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->access$200(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onConnected$0()V
    .locals 2

    const-string v0, "RealRemoteConnection"

    const-string v1, "DeathRecipient "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onConnected$1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public channelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public getRealApiInterface()Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->access$200(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    return-object p0
.end method

.method public listen(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConnected(Landroid/os/Bundle;Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "RealRemoteConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealRemoteConnection onConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lko8;

    invoke-direct {v0, p0}, Lko8;-><init>(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Binder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    new-instance v4, Llo8;

    invoke-direct {v4, p0}, Llo8;-><init>(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)V

    iget-object v5, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mInterceptor:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

    iget-object v7, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;-><init>(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->access$000(Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;)V

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    iget-object v4, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;->onConnected(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->access$100(Ljava/lang/String;)V

    const-string v0, "RealRemoteConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealRemoteConnection onDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mChannelName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;->onDisconnected(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unListen(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->mConnectedStateChange:Ljava/util/List;

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
