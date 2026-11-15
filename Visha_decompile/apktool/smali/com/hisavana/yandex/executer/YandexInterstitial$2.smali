.class Lcom/hisavana/yandex/executer/YandexInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/interstitial/InterstitialAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/yandex/executer/YandexInterstitial;->onInterstitialShow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;


# direct methods
.method public constructor <init>(Lcom/hisavana/yandex/executer/YandexInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexInterstitial"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdDismissed()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is Closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexInterstitial"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-static {p0}, Lcom/hisavana/yandex/executer/YandexInterstitial;->access$300(Lcom/hisavana/yandex/executer/YandexInterstitial;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/yandex/mobile/ads/common/AdError;)V
    .locals 3
    .param p1    # Lcom/yandex/mobile/ads/common/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad show failed, error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexInterstitial"

    invoke-virtual {v0, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    if-nez p1, :cond_1

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/common/AdError;->getDescription()Ljava/lang/String;

    move-result-object p1

    const v1, 0xc351

    invoke-direct {v0, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lcom/hisavana/yandex/executer/YandexInterstitial;->access$200(Lcom/hisavana/yandex/executer/YandexInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public onAdImpression(Lcom/yandex/mobile/ads/common/ImpressionData;)V
    .locals 3
    .param p1    # Lcom/yandex/mobile/ads/common/ImpressionData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is onAdImpression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/yandex/mobile/ads/common/ImpressionData;->getRawData()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "YandexInterstitial"

    invoke-virtual {v0, p1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShown()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial is onAdImpression"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexInterstitial"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial$2;->this$0:Lcom/hisavana/yandex/executer/YandexInterstitial;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method
