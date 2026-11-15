.class public Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
.implements Lcom/transsion/apiinvoke/ipc/connect/ServiceClientInterface;
.implements Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;,
        Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$RemoteCallbackWrapper;
    }
.end annotation


# static fields
.field public static final OXYGENBUS_VERSION_KEY:Ljava/lang/String; = "oxygenBusVersion"

.field private static final TAG:Ljava/lang/String; = "RealApiInterface"


# instance fields
.field private final channelName:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field private final mRemoteInterceptor:Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;

.field private mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy<",
            "Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;",
            ">;"
        }
    .end annotation
.end field

.field private oxygenBusVersion:Ljava/lang/String;

.field private supportInvokeChain:Z

.field private supportServiceVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const-string v0, "RealApiInterface"

    const-string v1, "1.5.00"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->oxygenBusVersion:Ljava/lang/String;

    new-instance v2, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-direct {v2, p1, p2}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;-><init>(Landroid/os/IInterface;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;)V

    iput-object v2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    new-instance p2, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;

    invoke-direct {p2, p3}, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;-><init>(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V

    iput-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mRemoteInterceptor:Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;

    iput-object p5, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->channelName:Ljava/lang/String;

    :try_start_0
    iput-object p4, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->extras:Landroid/os/Bundle;

    if-eqz p4, :cond_0

    const-string p2, "oxygenBusVersion"

    invoke-virtual {p4, p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->oxygenBusVersion:Ljava/lang/String;

    invoke-interface {p1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->getServiceVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportServiceVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string p1, "get supportServiceVersion error, RemoteException"

    invoke-static {v0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportServiceVersion:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RealApiInterface create:: oxygenBusVersion "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->oxygenBusVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " supportServiceVersion "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportServiceVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " supportInvokeChain "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " channelName "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->channelName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getValidApiSessionService(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->isBinderAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "RealApiInterface"

    const-string v0, "postToService isBinderAlive false"

    invoke-static {p1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    if-nez v0, :cond_1

    const-string p1, "RealApiInterface"

    const-string v0, "postToService serviceInterface == null"

    invoke-static {p1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z

    if-nez v2, :cond_2

    const-string p1, "RealApiInterface"

    const-string v0, "getValidApiSessionService supportInvokeChain false"

    invoke-static {p1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-interface {v0, p1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->getSession(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method


# virtual methods
.method public apiInvoke(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
    .locals 4

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$RemoteCallbackWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$RemoteCallbackWrapper;-><init>(Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$1;)V

    iget-object v2, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-virtual {v2}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;

    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelRequest;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;)V

    new-instance v3, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;

    invoke-direct {v3, p2}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;-><init>(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    invoke-interface {v2, p0, v3, v0}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->serviceCallWithChain(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;

    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelRequest;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;)V

    invoke-interface {v2, p0, v0}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->serviceCall(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$RemoteCallbackWrapper;->mResult:Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    if-nez p0, :cond_1

    invoke-static {v1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;->getResponse()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->knowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->serviceConnectFault(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public apiInvokeAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    new-instance v1, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;-><init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$1;)V

    iget-boolean p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;

    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelRequest;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;)V

    new-instance v2, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;

    invoke-direct {v2, p2}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;-><init>(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    invoke-interface {v0, p0, v2, v1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->serviceCallWithChain(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/apiinvoke/ipc/ParcelRequest;

    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelRequest;-><init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;)V

    invoke-interface {v0, p0, v1}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->serviceCall(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->invokeRemoteError(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getInterface()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isBinderAlive()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "RealApiInterface"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    :cond_0
    return-void
.end method

.method public postToService(Ljava/lang/String;Lcom/transsion/apiinvoke/invoke/TransformData;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "RealApiInterface"

    if-nez v1, :cond_0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "service version not support  postToService channelName "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->channelName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->getValidApiSessionService(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postToService serviceSession "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " channelName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->autoChain(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object p0

    new-instance v1, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;

    invoke-direct {v1, p2}, Lcom/transsion/apiinvoke/ipc/ParcelTransformData;-><init>(Lcom/transsion/apiinvoke/invoke/TransformData;)V

    new-instance p2, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;

    invoke-direct {p2, p0}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;-><init>(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    new-instance p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;

    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;-><init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$1;)V

    invoke-interface {p1, v1, p2, p0}, Lcom/transsion/apiinvoke/ipc/IServiceSession;->postClientData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public registerClient(Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/IServiceClient;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z

    if-nez v1, :cond_0

    const-string p0, "RealApiInterface"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClient service version not support serviceChannel "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->getValidApiSessionService(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->channelName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->autoChain(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;-><init>(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    invoke-interface {p1, p2, v1}, Lcom/transsion/apiinvoke/ipc/IServiceSession;->register(Lcom/transsion/apiinvoke/ipc/IServiceClient;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public supportInvokeChain()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportServiceVersion:Ljava/lang/String;

    const-string v1, "1.5.00"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/ipc/utils/ApiInvokeUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->oxygenBusVersion:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/ipc/utils/ApiInvokeUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unRegisterClient(Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/IServiceClient;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->supportInvokeChain:Z

    if-nez v0, :cond_0

    const-string p0, "RealApiInterface"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unRegisterClient service version not support  serviceChannel "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->getValidApiSessionService(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/transsion/apiinvoke/ipc/IServiceSession;->unRegister(Lcom/transsion/apiinvoke/ipc/IServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
