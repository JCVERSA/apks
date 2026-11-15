.class public interface abstract Lcom/transsion/apiinvoke/ipc/APIPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/APIPublisher$Stub;,
        Lcom/transsion/apiinvoke/ipc/APIPublisher$Default;
    }
.end annotation


# virtual methods
.method public abstract findLocalSubscribeTypeCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLocalSubscribeTypes()[Ljava/lang/String;
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

.method public abstract getSubscribeStateChangeObserver()Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver;
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

.method public abstract onPublishDataWithChain(Lcom/transsion/apiinvoke/ipc/ParcelPublishData;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
