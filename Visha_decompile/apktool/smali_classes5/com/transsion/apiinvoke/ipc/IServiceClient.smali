.class public interface abstract Lcom/transsion/apiinvoke/ipc/IServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/IServiceClient$Stub;,
        Lcom/transsion/apiinvoke/ipc/IServiceClient$Default;
    }
.end annotation


# virtual methods
.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceiveData(Lcom/transsion/apiinvoke/ipc/ParcelTransformData;Lcom/transsion/apiinvoke/ipc/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
