.class Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/apiinvoke/ipc/IRemoteCallback;


# direct methods
.method private constructor <init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;->mCallback:Lcom/transsion/apiinvoke/ipc/IRemoteCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;-><init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V

    return-void
.end method


# virtual methods
.method public response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub$RemoteCallbackWrapper;->mCallback:Lcom/transsion/apiinvoke/ipc/IRemoteCallback;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    invoke-direct {v0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;-><init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    invoke-interface {p0, v0}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback;->response(Lcom/transsion/apiinvoke/ipc/ParcelResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
