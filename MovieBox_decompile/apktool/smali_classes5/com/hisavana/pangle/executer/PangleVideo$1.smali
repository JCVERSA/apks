.class Lcom/hisavana/pangle/executer/PangleVideo$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleVideo;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleVideo;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleVideo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v0, p1}, Lcom/hisavana/pangle/executer/PangleVideo;->b(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    .line 3
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleVideo;->a(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    move-result-object p1

    const-string v0, "pangle_log"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleVideo;->e(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleVideo;->a(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    move-result-object p1

    iget-object v1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {v1}, Lcom/hisavana/pangle/executer/PangleVideo;->e(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-static {p1}, Lcom/hisavana/pangle/executer/PangleVideo;->a(Lcom/hisavana/pangle/executer/PangleVideo;)Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    move-result-object p1

    const-string v1, "price"

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/api/PangleAd;->getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    .line 9
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v1, "onAdLoad"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-virtual {p0, p1}, Lcom/hisavana/pangle/executer/PangleVideo$1;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleVideo$1;->a:Lcom/hisavana/pangle/executer/PangleVideo;

    .line 2
    .line 3
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "Pangle Ads failed to load ad with error message: "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, p1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleVideo;->c(Lcom/hisavana/pangle/executer/PangleVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "Pangle Ads failed to load ad with error code\uff1a"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "message: "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "pangle_log"

    .line 58
    .line 59
    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
