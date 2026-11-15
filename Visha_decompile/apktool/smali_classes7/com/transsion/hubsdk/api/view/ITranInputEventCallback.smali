.class public interface abstract Lcom/transsion/hubsdk/api/view/ITranInputEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/view/ITranInputEventCallback$Stub;,
        Lcom/transsion/hubsdk/api/view/ITranInputEventCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract handleInputEvent(Landroid/view/InputEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
