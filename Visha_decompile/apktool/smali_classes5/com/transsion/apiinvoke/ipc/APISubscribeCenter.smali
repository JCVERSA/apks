.class public interface abstract Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/APISubscribeCenter$Stub;,
        Lcom/transsion/apiinvoke/ipc/APISubscribeCenter$Default;
    }
.end annotation


# virtual methods
.method public abstract countSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServiceVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPublishData(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSafePublishData(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUnSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
