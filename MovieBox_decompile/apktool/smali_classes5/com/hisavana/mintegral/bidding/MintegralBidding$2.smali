.class Lcom/hisavana/mintegral/bidding/MintegralBidding$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/mbbid/out/BidListennning;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/bidding/MintegralBidding;->startQueryPrice(Lcom/hisavana/common/bean/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/hisavana/common/bean/Network;

.field final synthetic c:Lcom/hisavana/mintegral/bidding/MintegralBidding;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/bidding/MintegralBidding;JLcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->d(Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->d(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->e(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private synthetic d(Lcom/hisavana/common/bean/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->a(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->c(Lcom/hisavana/mintegral/bidding/MintegralBidding;)Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1, v0}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceSuccess(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->a:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "*---->mintegral bidding request fail --- : "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, " | "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, ",time use:"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "mintegral_log"

    .line 52
    .line 53
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 62
    .line 63
    const/16 v1, 0x7536

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingFailed(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/hisavana/mintegral/bidding/b;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/bidding/b;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onSuccessed(Lcom/mbridge/msdk/mbbid/out/BidResponsed;)V
    .locals 10

    .line 1
    const-string v0, "mintegral_log"

    .line 2
    .line 3
    const-string v1, ",id:"

    .line 4
    .line 5
    const-string v2, "*----> mintegral bidding success ---,price is:"

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-wide v5, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->a:J

    .line 12
    .line 13
    sub-long/2addr v3, v5

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object v5, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->getPrice()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 37
    .line 38
    mul-double/2addr v6, v8

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v8, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 63
    .line 64
    invoke-virtual {v8}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v8, ",time use:"

    .line 72
    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v6, v0, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object v3, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    invoke-virtual {v3, v6, v7}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingSuccess(D)V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 96
    .line 97
    invoke-virtual {v3, v5}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 101
    .line 102
    new-instance v4, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;

    .line 103
    .line 104
    invoke-direct {v4, p1}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;-><init>(Lcom/mbridge/msdk/mbbid/out/BidResponsed;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/Network;->setBidInfo(Lcom/hisavana/common/interfacz/IBidWithNotify;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$2;->b:Lcom/hisavana/common/bean/Network;

    .line 145
    .line 146
    new-instance v0, Lcom/hisavana/mintegral/bidding/a;

    .line 147
    .line 148
    invoke-direct {v0, p0, p1}, Lcom/hisavana/mintegral/bidding/a;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$2;Lcom/hisavana/common/bean/Network;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    :goto_1
    return-void
.end method
