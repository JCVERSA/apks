.class Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;
.super Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/session/server/SessionServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerCallbackRemote"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;->mCallback:Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;

    return-void
.end method


# virtual methods
.method public response(Lcom/transsion/apiinvoke/ipc/ParcelResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/server/SessionServer$ServerCallbackRemote;->mCallback:Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;->getResponse()Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->empty(I)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/ipc/session/server/ServerCallback;->onResponse(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_1
    return-void
.end method
