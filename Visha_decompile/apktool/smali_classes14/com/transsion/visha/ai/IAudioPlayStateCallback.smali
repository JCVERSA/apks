.class public interface abstract Lcom/transsion/visha/ai/IAudioPlayStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/visha/ai/IAudioPlayStateCallback$a;,
        Lcom/transsion/visha/ai/IAudioPlayStateCallback$Stub;,
        Lcom/transsion/visha/ai/IAudioPlayStateCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.visha.ai.IAudioPlayStateCallback"


# virtual methods
.method public abstract onError(Lcom/transsion/visha/ai/StateValue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlayerStateUpdate(Lcom/transsion/visha/ai/StateValue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
