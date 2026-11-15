.class public interface abstract Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdStopListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdStopListener"
.end annotation


# virtual methods
.method public abstract getStopAdInfo(Lcom/mgmi/ssp/NativeADDataRef;)V
.end method

.method public abstract onNoAd(Lcom/mgmi/ssp/AdError;)V
.end method
