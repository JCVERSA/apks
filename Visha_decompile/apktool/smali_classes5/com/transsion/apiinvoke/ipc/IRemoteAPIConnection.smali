.class public interface abstract Lcom/transsion/apiinvoke/ipc/IRemoteAPIConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/IRemoteAPIConnection$Stub;,
        Lcom/transsion/apiinvoke/ipc/IRemoteAPIConnection$Default;
    }
.end annotation


# virtual methods
.method public abstract onConnected(Landroid/os/Bundle;Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDisconnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
