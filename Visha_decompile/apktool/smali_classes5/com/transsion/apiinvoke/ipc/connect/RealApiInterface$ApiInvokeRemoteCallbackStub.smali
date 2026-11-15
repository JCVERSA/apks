.class Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;
.super Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiInvokeRemoteCallbackStub"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# direct methods
.method private constructor <init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;->mCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;-><init>(Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method


# virtual methods
.method public response(Lcom/transsion/apiinvoke/ipc/ParcelResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "RealApiInterface"

    const-string v1, "ApiInvokeRemoteCallbackStub, Receive response..."

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface$ApiInvokeRemoteCallbackStub;->mCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;->getResponse()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    return-void
.end method
