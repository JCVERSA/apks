.class Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/Notifier;


# static fields
.field private static final AUCTION_ID:Ljava/lang/String; = "${AUCTION_ID}"

.field private static final AUCTION_LOSS_CODE:Ljava/lang/String; = "${AUCTION_LOSS}"

.field private static final AUCTION_PRICE:Ljava/lang/String; = "${AUCTION_PRICE}"

.field private static final TAG:Ljava/lang/String; = "TapjoyNotifier"


# instance fields
.field private final DEFAULT_TIMEOUT_MS:I

.field private mAuctionID:Ljava/lang/String;

.field private mBid:Lcom/facebook/biddingkit/tapjoy/TapjoyBid;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->DEFAULT_TIMEOUT_MS:I

    iput-object p1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->mAuctionID:Ljava/lang/String;

    return-void
.end method

.method private getTimeout()I
    .locals 0

    const/16 p0, 0x7d0

    return p0
.end method


# virtual methods
.method public notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;)V
    .locals 0

    return-void
.end method

.method public notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->processUrl(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->getTimeout()I

    move-result p0

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/http/util/RequestSender;->get(Ljava/lang/String;I)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tapjoy notified with http status "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string p0, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TapjoyNotifier"

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processUrl(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->mBid:Lcom/facebook/biddingkit/tapjoy/TapjoyBid;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder;->NAME:Ljava/lang/String;

    invoke-interface {p1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->mBid:Lcom/facebook/biddingkit/tapjoy/TapjoyBid;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->getNurl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->mBid:Lcom/facebook/biddingkit/tapjoy/TapjoyBid;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->getLurl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/biddingkit/bidders/LossCode;->OUTBID:Lcom/facebook/biddingkit/bidders/LossCode;

    invoke-virtual {v1}, Lcom/facebook/biddingkit/bidders/LossCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "${AUCTION_LOSS}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getCPMCents()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string v1, "${AUCTION_PRICE}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "${AUCTION_ID}"

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->mAuctionID:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBid(Lcom/facebook/biddingkit/tapjoy/TapjoyBid;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyNotifier;->mBid:Lcom/facebook/biddingkit/tapjoy/TapjoyBid;

    return-void
.end method
