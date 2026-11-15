.class public abstract Lcom/hisavana/common/base/BaseQueryPrice;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field private mInquiryStartTime:J

.field protected final mMainHandler:Landroid/os/Handler;

.field private mNetwork:Lcom/hisavana/common/bean/Network;

.field protected mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

.field private orientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->orientation:I

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mMainHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v0, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 29
    .line 30
    return-void
.end method

.method private fillParamsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "trigger_id"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 17
    .line 18
    const-string v1, "platform"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 28
    .line 29
    const-string v1, "app_id"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 39
    .line 40
    const-string v1, "code_seat_id"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 50
    .line 51
    const-string v1, "cld_code_seat_id"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 61
    .line 62
    const-string v1, "cld_app_id"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 72
    .line 73
    const-string v1, "ad_type"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 83
    .line 84
    const-string v1, "is_pre_trigger"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 94
    .line 95
    const-string v1, "traffic_group_id"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 105
    .line 106
    const-string v1, "experiment_group_id"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_0
    return-void
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

.method public getNetwork()Lcom/hisavana/common/bean/Network;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->orientation:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
.end method

.method public abstract setBannerSize(I)V
.end method

.method public setNetwork(Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mNetwork:Lcom/hisavana/common/bean/Network;

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->orientation:I

    .line 2
    .line 3
    return-void
.end method

.method public setQueryPriceListener(Lcom/hisavana/common/interfacz/QueryPriceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mQueryPriceListener:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTrackingBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mBundle:Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public trackingBiddingFailed(ILjava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-string v3, "inquiry_return_ts"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    iget-wide v3, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mInquiryStartTime:J

    .line 16
    .line 17
    sub-long/2addr v1, v3

    .line 18
    const-string v3, "inquiry_return_time"

    .line 19
    .line 20
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    const-string v1, "error_code"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string p1, "bidding_price"

    .line 29
    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "error_message"

    .line 40
    .line 41
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseQueryPrice;->fillParamsToBundle(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdBiddingReturn(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public trackingBiddingStart()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mInquiryStartTime:J

    .line 11
    .line 12
    const-string v3, "inquiry_request_ts"

    .line 13
    .line 14
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseQueryPrice;->fillParamsToBundle(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdBidding(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public trackingBiddingSuccess(D)V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-string v3, "inquiry_return_ts"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    const-string v3, "error_code"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v3, "bidding_price"

    .line 22
    .line 23
    invoke-virtual {v0, v3, p1, p2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 24
    .line 25
    .line 26
    iget-wide p1, p0, Lcom/hisavana/common/base/BaseQueryPrice;->mInquiryStartTime:J

    .line 27
    .line 28
    sub-long/2addr v1, p1

    .line 29
    const-string p1, "inquiry_return_time"

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/hisavana/common/base/BaseQueryPrice;->fillParamsToBundle(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdBiddingReturn(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
