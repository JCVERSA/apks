.class public interface abstract Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver$Stub;,
        Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onSubscribeChange(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
