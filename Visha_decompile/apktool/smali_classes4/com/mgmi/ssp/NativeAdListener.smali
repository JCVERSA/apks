.class public interface abstract Lcom/mgmi/ssp/NativeAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/BasicADListener;


# virtual methods
.method public abstract onADLoaded(I)V
.end method

.method public abstract onADLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/ssp/NativeADDataRef;",
            ">;)V"
        }
    .end annotation
.end method
