.class final Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OxygenBusRemoteConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private channelName:Ljava/lang/String;

.field private connecting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;


# direct methods
.method public constructor <init>(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->connecting:Ljava/util/Set;

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->mConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-virtual {p1}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->channelName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->channelName:Ljava/lang/String;

    return-void
.end method

.method private bindServiceAsync(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 5

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getInstance()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->isConnect(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "KolunIPCChannel"

    if-nez v0, :cond_6

    if-lt p3, p4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$300(Landroid/content/Context;)Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->checkConnect(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bindServiceAsync already connected channelName "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->connecting:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->connecting:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindServiceAsync start channelName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    if-eqz v0, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->mConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-interface {v0, p2, v3, v4}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->bindRemoteServer(Ljava/lang/String;Landroid/os/Bundle;Lcom/transsion/apiinvoke/ipc/IRemoteAPIConnection;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindServiceAsync end channelName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bindRemoteServer success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->checkConnect(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_3

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x190

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    add-int/2addr p3, v2

    goto :goto_3

    :goto_1
    throw p0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindServiceAsync currentTimes = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMainLooper "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->connecting:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bindServiceAsync isConnected currentTimes = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->bindServiceAsync(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_6
    :goto_5
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->connecting:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_7

    const-string p0, "bindServiceAsync already connected... "

    goto :goto_6

    :cond_7
    const-string p0, "bindServiceAsync timeout... "

    :goto_6
    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private checkConnect(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindServiceAsync already connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->connecting:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bindRemoteSync(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->channelName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->bindServiceAsync(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getServiceInterface()Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->getServiceInterface()Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    return-object p0
.end method

.method public getServiceInterface()Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->mConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$400(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->mConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;->getRealApiInterface()Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSession()Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->mConnection:Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$400(Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;)Z

    move-result p0

    return p0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->connecting:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->channelName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic remoteDesc()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->remoteDesc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remoteDesc()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->channelName:Ljava/lang/String;

    return-object p0
.end method

.method public unbindRemote(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$300(Landroid/content/Context;)Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->channelName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->disconnectChannel(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindRemote channelName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$OxygenBusRemoteConnection;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " oxygenBus connected: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KolunIPCChannel"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
