.class public Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;
.super Lcom/transsion/apiinvoke/ipc/IServiceSession$Stub;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonServiceAcceptor"


# instance fields
.field private final clientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy<",
            "Lcom/transsion/apiinvoke/ipc/IServiceClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSessionHandle:Lcom/transsion/apiinvoke/ipc/session/server/ServiceSessionHandle;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IServiceSession$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public isClientRegistered(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onAcceptClientData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "CommonServiceAcceptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcceptData: sessionName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " withCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->mSessionHandle:Lcom/transsion/apiinvoke/ipc/session/server/ServiceSessionHandle;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;->getData()Lcom/transsion/apiinvoke/invoke/TransformData;

    move-result-object p1

    new-instance v0, Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;

    invoke-direct {v0, p2}, Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;-><init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V

    invoke-interface {p0, p1, v0, p3}, Lcom/transsion/apiinvoke/ipc/session/server/ServiceSessionHandle;->onAcceptData(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public postClientData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "CommonServiceAcceptor"

    const-string p1, "postClientData, called wrong api "

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public register(Lcom/transsion/apiinvoke/ipc/IServiceClient;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "CommonServiceAcceptor"

    const-string p1, "register, called wrong api, use registerClient instead"

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public registerClient(Lcom/transsion/apiinvoke/ipc/IServiceClient;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "CommonServiceAcceptor"

    if-nez p1, :cond_0

    const-string p0, "client == null "

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->remove()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    new-instance v1, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-direct {v1, p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;-><init>(Landroid/os/IInterface;)V

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "registerClient sessionName "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public sendData(Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "CommonServiceAcceptor"

    if-nez p1, :cond_0

    const-string p0, "sendData error null data"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v2, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "sendData client is null"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/transsion/apiinvoke/ipc/IServiceClient;

    if-eqz v4, :cond_3

    new-instance v5, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;

    invoke-direct {v5, p1}, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;-><init>(Lcom/transsion/apiinvoke/invoke/TransformData;)V

    invoke-interface {v4, v5, p2}, Lcom/transsion/apiinvoke/ipc/IServiceClient;->onReceiveData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendData success to client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendData error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public sessionService()Lcom/transsion/apiinvoke/ipc/IServiceSession;
    .locals 0

    return-object p0
.end method

.method public setSessionListener(Lcom/transsion/apiinvoke/ipc/session/server/ServiceSessionHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->mSessionHandle:Lcom/transsion/apiinvoke/ipc/session/server/ServiceSessionHandle;

    return-void
.end method

.method public unRegister(Lcom/transsion/apiinvoke/ipc/IServiceClient;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "CommonServiceAcceptor"

    const-string p1, "unRegister, called wrong api, use unRegisterClient instead"

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterClient(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CommonServiceAcceptor"

    if-eqz v0, :cond_0

    const-string p0, "unRegister sessionName == null "

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->remove()V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/CommonServiceSessionAcceptor;->clientMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unRegisterClient sessionName "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
