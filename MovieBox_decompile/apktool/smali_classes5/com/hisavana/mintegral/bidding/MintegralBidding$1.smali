.class Lcom/hisavana/mintegral/bidding/MintegralBidding$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/bidding/MintegralBidding;->queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
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
    iput-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->b:Lcom/hisavana/common/bean/Network;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onInitializeFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "init onError message\uff1a"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "mintegral_log"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onInitializeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-wide v0, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->a:J

    .line 6
    .line 7
    sub-long/2addr p1, v0

    .line 8
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
    const-string v2, "onInitializeSuccess\uff0cinit time "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "mintegral_log"

    .line 30
    .line 31
    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->c:Lcom/hisavana/mintegral/bidding/MintegralBidding;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/hisavana/mintegral/bidding/MintegralBidding$1;->b:Lcom/hisavana/common/bean/Network;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/hisavana/mintegral/bidding/MintegralBidding;->startQueryPrice(Lcom/hisavana/common/bean/Network;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
