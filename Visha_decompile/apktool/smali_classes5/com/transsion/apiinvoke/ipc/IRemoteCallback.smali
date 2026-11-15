.class public interface abstract Lcom/transsion/apiinvoke/ipc/IRemoteCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Stub;,
        Lcom/transsion/apiinvoke/ipc/IRemoteCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract response(Lcom/transsion/apiinvoke/ipc/ParcelResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
