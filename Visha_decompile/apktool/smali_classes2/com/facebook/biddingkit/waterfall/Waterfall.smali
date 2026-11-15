.class public interface abstract Lcom/facebook/biddingkit/waterfall/Waterfall;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createWaterfallCopy()Lcom/facebook/biddingkit/waterfall/Waterfall;
.end method

.method public abstract entries()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/facebook/biddingkit/waterfall/WaterfallEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/facebook/biddingkit/gen/Bid;)V
.end method

.method public abstract insert(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
.end method
