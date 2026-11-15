.class public Lcom/hisavana/yandex/util/YandexPlatformUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getNativeInfo(Lcom/yandex/mobile/ads/nativeads/NativeAd;IILcom/hisavana/yandex/executer/YandexNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 3

    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {v0}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    :cond_1
    new-instance v1, Lcom/hisavana/yandex/util/YandexPlatformUtil$1;

    invoke-direct {v1, p0, p3, p3, v0}, Lcom/hisavana/yandex/util/YandexPlatformUtil$1;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    invoke-interface {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAd;->getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getRating()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getRating()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setRating(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getPrice()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setSaleprice(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    invoke-virtual {v0}, Lcom/hisavana/common/bean/AdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCreateId(Ljava/lang/String;)V

    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
