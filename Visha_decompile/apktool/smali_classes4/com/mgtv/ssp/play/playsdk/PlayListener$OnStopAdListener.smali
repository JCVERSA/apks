.class public interface abstract Lcom/mgtv/ssp/play/playsdk/PlayListener$OnStopAdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/play/playsdk/PlayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStopAdListener"
.end annotation


# virtual methods
.method public abstract getStopAdInfo(Lcom/mgmi/ssp/NativeADDataRef;)V
.end method

.method public abstract onNoAd(Lcom/mgmi/ssp/AdError;)V
.end method
