.class public interface abstract Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/Bidder;


# virtual methods
.method public abstract getPayload(Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public abstract notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Ljava/lang/String;)V
    .param p2    # Lcom/facebook/biddingkit/waterfall/Waterfall;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Ljava/lang/String;)V
    .param p2    # Lcom/facebook/biddingkit/waterfall/WaterfallEntry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract requestBid(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/Bid;
.end method
