.class public interface abstract Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub;,
        Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Default;
    }
.end annotation


# virtual methods
.method public abstract interceptUnknowSourceWindow(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
