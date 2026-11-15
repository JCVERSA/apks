.class Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBidWithNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mintegral/bidding/MintegralBidding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BidWithNotify"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

.field private b:Z

.field private c:J


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbid/out/BidResponsed;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->c:J

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/mbridge/msdk/mbbid/out/BidLossCode;->bidPriceNotHighest()Lcom/mbridge/msdk/mbbid/out/BidLossCode;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendLossNotice(Landroid/content/Context;Lcom/mbridge/msdk/mbbid/out/BidLossCode;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendWinNotice(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "mintegral getPayload"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->getBidToken()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "mintegral_log"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->getBidToken()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->c:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sget v2, Lcom/hisavana/common/constant/ComConstants;->BID_PRICE_CACHE_TIME:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public notifyLoss()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "mintegral_log"

    .line 15
    .line 16
    const-string v2, "notify mintegral bidding failed"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 32
    .line 33
    new-instance v1, Lcom/hisavana/mintegral/bidding/c;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/hisavana/mintegral/bidding/c;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {}, Lcom/mbridge/msdk/mbbid/out/BidLossCode;->bidPriceNotHighest()Lcom/mbridge/msdk/mbbid/out/BidLossCode;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendLossNotice(Landroid/content/Context;Lcom/mbridge/msdk/mbbid/out/BidLossCode;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public notifyWin()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "mintegral_log"

    .line 11
    .line 12
    const-string v2, "notify mintegral bidding win"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 28
    .line 29
    new-instance v1, Lcom/hisavana/mintegral/bidding/d;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/hisavana/mintegral/bidding/d;-><init>(Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->a:Lcom/mbridge/msdk/mbbid/out/BidResponsed;

    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbid/out/BidResponsed;->sendWinNotice(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$BidWithNotify;->b:Z

    .line 49
    .line 50
    :goto_0
    return-void
.end method
