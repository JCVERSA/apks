.class public interface abstract Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdListener"
.end annotation


# virtual methods
.method public abstract onAdClick(Ljava/lang/String;)V
.end method

.method public abstract onAdComplete()V
.end method

.method public abstract onAdCutDown(I)V
.end method

.method public abstract onAdEmpty()V
.end method

.method public abstract onAdError(Lcom/mgmi/ssp/AdError;)V
.end method

.method public abstract onAdPrepare()V
.end method

.method public abstract onAdSizeChanged(II)V
.end method

.method public abstract onAdStartPlayering()V
.end method

.method public abstract onClickBack()V
.end method

.method public abstract onClickFullScreen()V
.end method
