.class public interface abstract Lcom/transsion/visha/ai/IAIServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/visha/ai/IAIServiceInterface$a;,
        Lcom/transsion/visha/ai/IAIServiceInterface$Stub;,
        Lcom/transsion/visha/ai/IAIServiceInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.visha.ai.IAIServiceInterface"


# virtual methods
.method public abstract registerAudioPlayListener(Lcom/transsion/visha/ai/IAudioPlayStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchAudioData(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startAudioActivity(Lcom/transsion/visha/ai/AudioData;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startPlay(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startVideoMainActivity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
