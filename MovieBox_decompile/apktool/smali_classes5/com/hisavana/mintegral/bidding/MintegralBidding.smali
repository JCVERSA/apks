.class public Lcom/hisavana/mintegral/bidding/MintegralBidding;
.super Lcom/hisavana/common/base/BaseQueryPrice;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;
    }
.end annotation


# instance fields
.field private a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseQueryPrice;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private b()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x140

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x32

    .line 15
    .line 16
    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    .line 17
    .line 18
    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x5a

    .line 22
    .line 23
    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    .line 24
    .line 25
    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v0, 0xfa

    .line 29
    .line 30
    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    .line 31
    .line 32
    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/16 v0, 0x64

    .line 36
    .line 37
    iput v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    .line 38
    .line 39
    iput v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 3
    .line 4
    return-void
.end method

.method public queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;

    .line 19
    .line 20
    invoke-direct {v3, p0, v0, v1, p2}, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding;JLcom/hisavana/common/bean/Network;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2, v3}, Lcom/hisavana/mintegral/check/ExistsCheck;->initAdSource(Ljava/lang/String;Ljava/lang/String;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public setBannerSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public startQueryPrice(Lcom/hisavana/common/bean/Network;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getAdt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/mbridge/msdk/mbbid/out/BidManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v2, v1}, Lcom/mbridge/msdk/mbbid/out/BidManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "*---->mintegral bidding getOrientation() --- :"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseQueryPrice;->getOrientation()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "mintegral_log"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/mbridge/msdk/mbbid/out/BidManager;

    .line 57
    .line 58
    new-instance v8, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseQueryPrice;->getOrientation()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/16 v6, 0x1e

    .line 69
    .line 70
    const/16 v7, 0x1e

    .line 71
    .line 72
    const-string v2, ""

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    move-object v1, v8

    .line 76
    invoke-direct/range {v1 .. v7}, Lcom/mbridge/msdk/mbbid/out/SplashBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v8}, Lcom/mbridge/msdk/mbbid/out/BidManager;-><init>(Lcom/mbridge/msdk/mbbid/out/CommonBidRequestParams;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b()V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/mbridge/msdk/mbbid/out/BidManager;

    .line 87
    .line 88
    new-instance v1, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget v4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c:I

    .line 95
    .line 96
    iget v5, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding;->b:I

    .line 97
    .line 98
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mbridge/msdk/mbbid/out/BannerBidRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbbid/out/BidManager;-><init>(Lcom/mbridge/msdk/mbbid/out/CommonBidRequestParams;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingStart()V

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;

    .line 112
    .line 113
    invoke-direct {v3, p0, v1, v2, p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding;JLcom/hisavana/common/bean/Network;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/mbbid/out/BidManager;->setBidListener(Lcom/mbridge/msdk/mbbid/out/BidListennning;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbid/out/BidManager;->bid()V

    .line 120
    .line 121
    .line 122
    return-void
.end method
