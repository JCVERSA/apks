.class public abstract Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;
.super Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonServiceInterfaceStub"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doInvokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.5.135"

    return-object p0
.end method

.method public getSession(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;
    .locals 0

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->getInstance()Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;->getAcceptor(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/session/server/ISServiceAcceptor;->sessionService()Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public serviceCall(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->getRequest()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p1

    new-instance v0, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;-><init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$1;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;->doInvokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public serviceCallWithChain(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelRequest;->getRequest()Lcom/transsion/apiinvoke/invoke/ApiRequest;

    move-result-object p1

    :try_start_0
    invoke-virtual {p2}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object p2

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->getInstance()Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/transsion/apiinvoke/invoke/interceptor/InterceptorManager;->processChainV2(Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRouterUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceCall processChain = true; routerUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;-><init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$1;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;->doInvokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "serviceCall onRequestRemotePrevent routerUri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    new-instance p0, Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->applyMsg(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;-><init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    invoke-interface {p3, p0}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback;->response(Lcom/transsion/apiinvoke/ipc/ParcelResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateApiSwitchConfig(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p0, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateApiSwitchConfig config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
