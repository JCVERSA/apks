.class public interface abstract Lcom/transsion/visha/ai/IAudioPlayCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/visha/ai/IAudioPlayCallback$a;,
        Lcom/transsion/visha/ai/IAudioPlayCallback$Stub;,
        Lcom/transsion/visha/ai/IAudioPlayCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.visha.ai.IAudioPlayCallback"


# virtual methods
.method public abstract onError(Lcom/transsion/visha/ai/StateValue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSearched(Lcom/transsion/visha/ai/StateValue;Lcom/transsion/visha/ai/AudioData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/transsion/visha/ai/StateValue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
