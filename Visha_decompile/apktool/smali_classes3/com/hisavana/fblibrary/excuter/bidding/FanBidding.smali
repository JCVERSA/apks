.class public Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;
.super Lcom/hisavana/common/base/BaseQueryPrice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseQueryPrice;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method

.method public static synthetic e(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_50:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_1

    :cond_0
    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_250:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p0, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_90:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    :goto_1
    return-object p0
.end method

.method public final synthetic c(Lcom/hisavana/common/bean/Network;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;)V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbtoken is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hisavana/common/constant/ComConstants;->fbBidToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FanBidding"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/hisavana/common/constant/ComConstants;->fbBidToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->isIsTestDevice()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->setTestMode(Z)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->buildWithNotifier()Lcom/facebook/biddingkit/bidders/BidderWithNotifier;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingStart()V

    new-instance v2, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;-><init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;Lcom/hisavana/common/bean/Network;J)V

    invoke-interface {p2, v2}, Lcom/facebook/biddingkit/bidders/BidderWithNotifier;->retrieveBidWithNotificationCompleted(Lcom/facebook/biddingkit/bidders/BidResponseCallback;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    return-void
.end method

.method public queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getAdt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->NATIVE_BANNER:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->a:I

    invoke-virtual {p0, v0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->a(I)Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->NATIVE:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    :goto_0
    new-instance v1, Lbp3;

    invoke-direct {v1, p0, p2, v0}, Lbp3;-><init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;Lcom/hisavana/common/bean/Network;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;)V

    invoke-static {p1, v1}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->takeFbBidToken(Landroid/content/Context;Lcom/hisavana/fblibrary/excuter/check/ExistsCheck$a;)V

    return-void
.end method

.method public setBannerSize(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->a:I

    return-void
.end method
