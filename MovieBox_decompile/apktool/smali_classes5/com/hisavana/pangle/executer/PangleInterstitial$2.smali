.class Lcom/hisavana/pangle/executer/PangleInterstitial$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleInterstitial;->initInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleInterstitial;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleInterstitial;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "pangle_log"

    .line 12
    .line 13
    const-string v2, "Pangle Ads onAdClick"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleInterstitial;->g(Lcom/hisavana/pangle/executer/PangleInterstitial;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "pangle_log"

    .line 11
    .line 12
    const-string v2, "Pangle Ads onAdDismissed"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onAdShowed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleInterstitial$2;->a:Lcom/hisavana/pangle/executer/PangleInterstitial;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "pangle_log"

    .line 12
    .line 13
    const-string v2, "Pangle Ads onAdShowed"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
