.class public Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private stub:Lcom/transsion/apiinvoke/ipc/IRemoteCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;->stub:Lcom/transsion/apiinvoke/ipc/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/session/client/RemoteCallback;->stub:Lcom/transsion/apiinvoke/ipc/IRemoteCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/apiinvoke/ipc/ParcelResponse;

    invoke-direct {v0, p1}, Lcom/transsion/apiinvoke/ipc/ParcelResponse;-><init>(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    invoke-interface {p0, v0}, Lcom/transsion/apiinvoke/ipc/IRemoteCallback;->response(Lcom/transsion/apiinvoke/ipc/ParcelResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
