.class public interface abstract Lcom/mgtv/ssp/control/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract attach(Lcom/mgtv/ssp/control/a;)V
    .param p1    # Lcom/mgtv/ssp/control/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getView()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract onLockStateChanged(Z)V
.end method

.method public abstract onPlayStateChanged(I)V
.end method

.method public abstract onPlayerStateChanged(I)V
.end method

.method public abstract onVisibilityChanged(ZLandroid/view/animation/Animation;)V
.end method

.method public abstract setProgress(II)V
.end method
