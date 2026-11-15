.class public interface abstract Lcom/mgmi/ssp/IncentiveVideoListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/BasicADListener;


# virtual methods
.method public abstract onAdClick()V
.end method

.method public abstract onAdClosed()V
.end method

.method public abstract onAdComplete()V
.end method

.method public abstract onAdError(Lcom/mgmi/ssp/AdError;)V
    .param p1    # Lcom/mgmi/ssp/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdPrepared()V
.end method

.method public abstract onAdStart()V
.end method

.method public abstract onUpdateAdTime(I)V
.end method
