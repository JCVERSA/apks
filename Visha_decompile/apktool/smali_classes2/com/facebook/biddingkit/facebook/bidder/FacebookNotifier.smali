.class Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/Notifier;


# static fields
.field private static final AB_TEST_SEGMENT:Ljava/lang/String; = "${AB_TEST_SEGMENT}"

.field private static final APP_FBID:Ljava/lang/String; = "${APP_FBID}"

.field private static final AUCTION_ID:Ljava/lang/String; = "${AUCTION_ID}"

.field private static final AUCTION_LOSS_CODE:Ljava/lang/String; = "${AUCTION_LOSS}"

.field private static final AUCTION_PRICE:Ljava/lang/String; = "${AUCTION_PRICE}"

.field private static final BUNDLE:Ljava/lang/String; = "${BUNDLE}"

.field private static final IDFA:Ljava/lang/String; = "${IDFA}"

.field private static final PARTNER_FBID:Ljava/lang/String; = "${PARTNER_FBID}"

.field private static final PHASE:Ljava/lang/String; = "${PHASE}"

.field private static final PLACEMENT_FBID:Ljava/lang/String; = "${PLACEMENT_FBID}"

.field private static final TAG:Ljava/lang/String; = "FacebookNotifier"

.field private static final WINNER_NAME:Ljava/lang/String; = "${WINNER_NAME}"

.field private static final WINNER_TYPE:Ljava/lang/String; = "${WINNER_TYPE}"


# instance fields
.field private final DEFAULT_TIMEOUT_MS:I

.field private final mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

.field private final mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

.field private mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

.field private mIdfa:Ljava/lang/String;

.field private mIsDefault:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    .line 6
    iput v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->DEFAULT_TIMEOUT_MS:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    .line 10
    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIsDefault:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    return-object p0
.end method

.method public static getCPMCents(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Ljava/lang/Double;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->NAME:Ljava/lang/String;

    invoke-interface {p0}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getCPMCents()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getCPMCents()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getLurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    invoke-virtual {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getLurl()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    invoke-virtual {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;->getNotificationUrl()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getEntryName(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getEntryName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTimeout()I
    .locals 0

    const/16 p0, 0x7d0

    return p0
.end method


# virtual methods
.method public getIdfa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/biddingkit/utils/Utils;->getIdfa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getLossCode(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/LossCode;
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIsDefault:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/facebook/biddingkit/bidders/LossCode;->DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$2;->$SwitchMap$com$facebook$biddingkit$http$util$HttpStatusCode:[I

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getStatusCode()Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/facebook/biddingkit/bidders/LossCode;->TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/facebook/biddingkit/bidders/LossCode;->NO_BID:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0

    :cond_3
    :goto_0
    sget-object v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lcom/facebook/biddingkit/bidders/LossCode;->WIN:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    if-nez p0, :cond_5

    sget-object p0, Lcom/facebook/biddingkit/bidders/LossCode;->TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0

    :cond_5
    sget-object p0, Lcom/facebook/biddingkit/bidders/LossCode;->OUTBID:Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;)V
    .locals 4

    invoke-static {p2}, Lcom/facebook/biddingkit/utils/Utils;->getFirstAndSecondBidderEntries(Lcom/facebook/biddingkit/waterfall/Waterfall;)[Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getEntryName(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v0

    const/4 v3, 0x1

    aget-object p2, p2, v3

    invoke-static {v2, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getCPMCents(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-void
.end method

.method public notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 3

    invoke-static {p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getEntryName(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getCPMCents()D

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-void
.end method

.method public notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->processUrl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getTimeout()I

    move-result p0

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/http/util/RequestSender;->get(Ljava/lang/String;I)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    const-string p1, "null"

    const-string p2, "FacebookNotifier"

    if-eqz p4, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Facebook display winner notified with http status "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Facebook bidder winner notified with http status "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public processUrl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 11
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-virtual {v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, ""

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    :try_start_1
    aget-object v2, v2, v3

    move-object v4, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v4, v9

    :goto_0
    new-instance v10, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;

    move-object v2, v10

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v9

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-string v2, "FacebookNotifier"

    const-string v3, "Failed processing the Url"

    invoke-static {v2, v3, v0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public setFacebookBid(Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    return-void
.end method
