.class public interface abstract Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer$Stub;,
        Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer$Default;
    }
.end annotation


# virtual methods
.method public abstract findSubscribe(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/APIPublisher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract findSubscribeTypeCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAllPublishInfo()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSubscribeCenter()Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSubscribeManager(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/APIPublisher;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterSubscribeManager(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
