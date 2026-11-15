.class public interface abstract Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub;,
        Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getServiceVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSession(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract serviceCall(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract serviceCallWithChain(Lcom/transsion/apiinvoke/ipc/ParcelRequest;Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateApiSwitchConfig(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
