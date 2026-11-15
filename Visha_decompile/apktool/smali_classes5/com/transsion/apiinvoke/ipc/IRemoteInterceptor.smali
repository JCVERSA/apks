.class public interface abstract Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor$Stub;,
        Lcom/transsion/apiinvoke/ipc/IRemoteInterceptor$Default;
    }
.end annotation


# virtual methods
.method public abstract processChain(Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processChainV2(Lcom/transsion/apiinvoke/ipc/ParcelInvokeChain;)Lcom/transsion/apiinvoke/ipc/ParcelResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
