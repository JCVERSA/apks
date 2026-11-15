.class Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/newinterstitial/out/NewInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/executer/MintegralInterstitial;->initInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/executer/MintegralInterstitial;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;->a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;->a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "mintegral_log"

    .line 12
    .line 13
    const-string v1, "onAdClicked"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAdClose(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;->a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->a(Lcom/hisavana/mintegral/executer/MintegralInterstitial;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "mintegral_log"

    .line 11
    .line 12
    const-string v0, "onAdClose"

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onAdCloseWithNIReward(Lcom/mbridge/msdk/out/MBridgeIds;Lcom/mbridge/msdk/out/RewardInfo;)V
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
    const-string v2, "onAdCloseWithNIReward: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/MBridgeIds;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "  "

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/mbridge/msdk/out/RewardInfo;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "mintegral_log"

    .line 39
    .line 40
    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onAdShow(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;->a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "mintegral_log"

    .line 12
    .line 13
    const-string v1, "onAdShow"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onEndcardShow(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "onEndcardShow"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLoadCampaignSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "onLoadCampaignSuccess"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onResourceLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;->a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Mintegral Ads failed to load ad with error message: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/16 v1, 0x7533

    .line 23
    .line 24
    invoke-direct {v0, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->b(Lcom/hisavana/mintegral/executer/MintegralInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "mintegral_log"

    .line 35
    .line 36
    const-string v0, "onResourceLoadFail"

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onResourceLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;->a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseInterstitial;->adLoaded()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "mintegral_log"

    .line 11
    .line 12
    const-string v1, "onResourceLoadSuccess"

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onShowFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralInterstitial$1;->a:Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    .line 2
    .line 3
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Mintegral Ads failed to load ad with error message: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/16 v1, 0x7533

    .line 23
    .line 24
    invoke-direct {v0, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/hisavana/mintegral/executer/MintegralInterstitial;->c(Lcom/hisavana/mintegral/executer/MintegralInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "mintegral_log"

    .line 35
    .line 36
    const-string v0, "onShowFail"

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onVideoComplete(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "onVideoComplete"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
