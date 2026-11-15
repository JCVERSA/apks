.class Lcom/transsion/apiinvoke/ipc/session/client/SessionClient$LocalRemoteCallback;
.super Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalRemoteCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient$LocalRemoteCallback;->mCallback:Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionClient"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient$LocalRemoteCallback;->mCallback:Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;->getResponse()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->empty(I)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    :goto_1
    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;->onResponse(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    return-void
.end method
