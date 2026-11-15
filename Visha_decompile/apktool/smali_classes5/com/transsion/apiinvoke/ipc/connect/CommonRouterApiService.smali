.class public Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonRouterApiService"


# instance fields
.field protected final binder:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService$1;

    invoke-direct {v0, p0}, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService$1;-><init>(Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->binder:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object p1, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->TAG:Ljava/lang/String;

    const-string v0, "onBind call"

    invoke-static {p1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getInstance()Lcom/transsion/apiinvoke/common/router/ApiRouterManager;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->listRegisterServer()V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->binder:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy call"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onInvokeApiASync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findLocalChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/channel/LocalChannel;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvokeApiASync "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRouterUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->invokeApiAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getChannelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelNotFound(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInvokeApiASync with chain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/ApiRequest;->getRouterUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;->invokeApiAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    :try_end_0
    .catch Lcom/transsion/apiinvoke/invoke/ApiMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error invoke target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x191

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->onError(ILjava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind call"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
