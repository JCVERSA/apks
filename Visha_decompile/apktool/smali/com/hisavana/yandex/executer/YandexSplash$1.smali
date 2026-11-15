.class Lcom/hisavana/yandex/executer/YandexSplash$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/yandex/executer/YandexSplash;->onSplashStartLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisavana/yandex/executer/YandexSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/yandex/executer/YandexSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexSplash$1;->this$0:Lcom/hisavana/yandex/executer/YandexSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/common/AdRequestError;)V
    .locals 3
    .param p1    # Lcom/yandex/mobile/ads/common/AdRequestError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yandex appOpenAd onAdFailedToLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexSplash$1;->this$0:Lcom/hisavana/yandex/executer/YandexSplash;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----->> error info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequestError;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexSplash"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexSplash$1;->this$0:Lcom/hisavana/yandex/executer/YandexSplash;

    if-nez p1, :cond_1

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequestError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/common/AdRequestError;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    move-object p1, v0

    :goto_1
    invoke-static {p0, p1}, Lcom/hisavana/yandex/executer/YandexSplash;->access$300(Lcom/hisavana/yandex/executer/YandexSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public onAdLoaded(Lcom/yandex/mobile/ads/appopenad/AppOpenAd;)V
    .locals 3
    .param p1    # Lcom/yandex/mobile/ads/appopenad/AppOpenAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yandex appOpenAd onAdLoaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexSplash$1;->this$0:Lcom/hisavana/yandex/executer/YandexSplash;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----->> ad info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->getInfo()Lcom/yandex/mobile/ads/common/AdInfo;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexSplash"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexSplash$1;->this$0:Lcom/hisavana/yandex/executer/YandexSplash;

    invoke-static {v0, p1}, Lcom/hisavana/yandex/executer/YandexSplash;->access$202(Lcom/hisavana/yandex/executer/YandexSplash;Lcom/yandex/mobile/ads/appopenad/AppOpenAd;)Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexSplash$1;->this$0:Lcom/hisavana/yandex/executer/YandexSplash;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    return-void
.end method
