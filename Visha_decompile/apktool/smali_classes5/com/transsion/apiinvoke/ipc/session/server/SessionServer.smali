.class public Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$SessionServerHolder;,
        Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;
    }
.end annotation


# instance fields
.field private final acceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommonAcceptor:Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->mCommonAcceptor:Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->acceptors:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;
    .locals 1

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$SessionServerHolder;->access$000()Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAcceptor(Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->acceptors:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public allConnectClient()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->acceptors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getAcceptor(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->acceptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->mCommonAcceptor:Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;

    :cond_0
    return-object p1
.end method

.method public isClientConnected(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->acceptors:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;->sessionService()Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    return p0
.end method

.method public removeAcceptor(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->acceptors:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendClient(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->mCommonAcceptor:Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;

    new-instance v1, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;

    invoke-direct {v1, p2}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;-><init>(Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->sendData(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    .line 5
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->acceptors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;

    .line 8
    new-instance v1, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;

    invoke-direct {v1, p2}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;-><init>(Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;->sendData(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendClient(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->getAcceptor(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    .line 2
    const-string p1, "\u672a\u627e\u5230\u5ba2\u6237\u7aef\u8fde\u63a5"

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onError(ILjava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;->onResponse(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p3, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;

    invoke-direct {p3, p2}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;-><init>(Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;)V

    invoke-interface {p0, p1, p3}, Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;->sendData(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    return-void
.end method

.method public setCommonSessionHandle(Lcom/transsion/apiinvoke/ipc/session/server/ServiceSessionHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->mCommonAcceptor:Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->setSessionListener(Lcom/transsion/apiinvoke/ipc/session/server/ServiceSessionHandle;)V

    return-void
.end method
