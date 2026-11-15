.class public interface abstract Lcom/transsion/apiinvoke/ipc/IServiceSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/IServiceSession$Stub;,
        Lcom/transsion/apiinvoke/ipc/IServiceSession$Default;
    }
.end annotation


# virtual methods
.method public abstract isClientRegistered(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAcceptClientData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract postClientData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract register(Lcom/transsion/apiinvoke/ipc/IServiceClient;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerClient(Lcom/transsion/apiinvoke/ipc/IServiceClient;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegister(Lcom/transsion/apiinvoke/ipc/IServiceClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterClient(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
