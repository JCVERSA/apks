.class public Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;
.super Lcom/transsion/apiinvoke/ipc/IServiceClient$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/session/client/SessionClient$LocalRemoteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionClient"

.field private static final mRemoteLocalStub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/ipc/session/client/OnSessionDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Ljava/lang/String;

.field private mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

.field private mRemoteDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteLocalStub:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/IServiceSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IServiceClient$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    iput-object p2, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mClient:Ljava/lang/String;

    invoke-direct {p0, p0}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->register(Lcom/transsion/apiinvoke/ipc/IServiceClient;)V

    return-void
.end method

.method private dispatchDisconnect()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/ipc/session/client/OnSessionDataListener;

    iget-object v3, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/transsion/apiinvoke/ipc/session/client/OnSessionDataListener;->onDisconnect(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "SessionClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect from remote service; remote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dispatchReceiveData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/ipc/session/client/OnSessionDataListener;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;->getData()Lcom/transsion/apiinvoke/invoke/TransformData;

    move-result-object v3

    new-instance v4, Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;

    invoke-direct {v4, p2}, Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;-><init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V

    invoke-interface {v2, v3, v4}, Lcom/transsion/apiinvoke/ipc/session/client/OnSessionDataListener;->onReceived(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "SessionClient"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveData from remote service; remote "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static openRemoteSession(Ljava/lang/Object;Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;
    .locals 5

    sget-object v0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteLocalStub:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getInstance()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getServiceInterface(Ljava/lang/Object;)Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->getSession(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object v2

    new-instance v3, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, p1}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;-><init>(Lcom/transsion/apiinvoke/ipc/IServiceSession;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_2
    return-object v1
.end method

.method private register(Lcom/transsion/apiinvoke/ipc/IServiceClient;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mClient:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/transsion/apiinvoke/ipc/IServiceSession;->registerClient(Lcom/transsion/apiinvoke/ipc/IServiceClient;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register client ."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SessionClient"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/transsion/apiinvoke/ipc/session/client/OnSessionDataListener;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearListener()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disconnect()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->dispatchDisconnect()V

    return-void
.end method

.method public isClientRegistered()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mClient:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/apiinvoke/ipc/IServiceSession;->isClientRegistered(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isRemoteAlive()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onReceiveData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->dispatchReceiveData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V

    return-void
.end method

.method public postToServer(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    const-string p1, "remote is null"

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onError(ILjava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;->onResponse(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "SessionClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postToServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;

    invoke-direct {v0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;-><init>(Lcom/transsion/apiinvoke/invoke/TransformData;)V

    new-instance p1, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient$LocalRemoteCallback;

    invoke-direct {p1, p2}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient$LocalRemoteCallback;-><init>(Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;)V

    invoke-interface {p0, v0, p1, p3}, Lcom/transsion/apiinvoke/ipc/IServiceSession;->onAcceptClientData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->clearListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release remote service; remote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionClient"

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    return-void
.end method

.method public removeListener(Lcom/transsion/apiinvoke/ipc/session/client/OnSessionDataListener;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unRegister()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemote:Lcom/transsion/apiinvoke/ipc/IServiceSession;

    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mClient:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/apiinvoke/ipc/IServiceSession;->unRegisterClient(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegister client ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->mRemoteDesc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SessionClient"

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
