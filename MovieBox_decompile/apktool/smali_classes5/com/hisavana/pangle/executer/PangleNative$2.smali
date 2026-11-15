.class Lcom/hisavana/pangle/executer/PangleNative$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleNative;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleNative;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative$2;->a:Lcom/hisavana/pangle/executer/PangleNative;

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
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle_log"

    .line 6
    .line 7
    const-string v2, "Pangle Ads onAdClick"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$2;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->p(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle_log"

    .line 6
    .line 7
    const-string v2, "Pangle Ads onAdDismissed"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$2;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->q(Lcom/hisavana/pangle/executer/PangleNative;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onAdShowed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle_log"

    .line 6
    .line 7
    const-string v2, "Pangle Ads onAdShowed"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$2;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->p(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
