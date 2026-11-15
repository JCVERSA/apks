.class public interface abstract Lcom/mgmi/ssp/NativeExpressADListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/BasicADListener;


# virtual methods
.method public abstract onADClicked(Lcom/mgmi/ssp/NativeExpressADView;)V
.end method

.method public abstract onADClosed(Lcom/mgmi/ssp/NativeExpressADView;)V
.end method

.method public abstract onADExposure(Lcom/mgmi/ssp/NativeExpressADView;)V
.end method

.method public abstract onADLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/ssp/NativeExpressADView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRenderFail(Lcom/mgmi/ssp/NativeExpressADView;)V
.end method

.method public abstract onRenderSuccess(Lcom/mgmi/ssp/NativeExpressADView;)V
.end method
