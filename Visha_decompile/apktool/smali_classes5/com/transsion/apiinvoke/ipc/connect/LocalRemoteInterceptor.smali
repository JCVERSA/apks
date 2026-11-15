.class public Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;
.super Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor$Stub;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalRemoteInterceptor"


# instance fields
.field private interceptor:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

.field private interceptorV2:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;

.field private responseEmpty:Lcom/transsion/apiinvoke/ipc/ParcelResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->interceptorV2:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;

    .line 5
    new-instance p1, Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->success(Ljava/lang/Object;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;-><init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->responseEmpty:Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->interceptor:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

    return-void
.end method


# virtual methods
.method public processChain(Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->interceptor:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processChain >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->interceptor:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor;->processChain(Lcom/transsion/apiinvoke/invoke/InvokeChain;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->TAG:Ljava/lang/String;

    const-string p1, "processChain or interceptor == null "

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public processChainV2(Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)Lcom/transsion/apiinvoke/ipc/ParcelResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->interceptorV2:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processChainV2 >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->interceptorV2:Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;->invokeChain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/invoke/interceptor/InvokeInterceptor2;->processChainV2(Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    if-nez p0, :cond_1

    const/16 p0, 0x1f7

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->empty(I)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    :cond_1
    new-instance p1, Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    invoke-direct {p1, p0}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;-><init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->TAG:Ljava/lang/String;

    const-string v0, "processChain or interceptorV2 == null "

    invoke-static {p1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/LocalRemoteInterceptor;->responseEmpty:Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    return-object p0
.end method
