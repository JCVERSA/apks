.class public Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static handler:Landroid/os/Handler;


# direct methods
.method public static addTestDevice(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v0, "deviceIdHash"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static addTestDevices(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->addTestDevices(Ljava/util/Collection;)V

    return-void
.end method

.method public static clearTestDevices()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/AdSettings;->clearTestDevices()V

    return-void
.end method

.method public static findFbMediaViewAndIconView(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/facebook/ads/MediaView;

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->findFbMediaViewAndIconView(Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getTAdNativeInfo(Lcom/facebook/ads/Ad;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p0, Lcom/facebook/ads/NativeAd;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    move-object v8, p0

    check-cast v8, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setSocialContext(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setSponsoredTranslation(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {p0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase$Image;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setWidth(I)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase$Image;->getHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setHeight(I)V

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {p0}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase$Image;->getWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setWidth(I)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase$Image;->getHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setHeight(I)V

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setImageList(Ljava/util/List;)V

    if-nez p3, :cond_3

    move-object p0, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    new-instance p0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;

    move-object v3, p0

    move-object v4, v8

    move-object v5, p3

    move-object v6, p3

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$a;-><init>(Lcom/facebook/ads/NativeAd;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lcom/facebook/ads/NativeAd;)V

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    invoke-virtual {v2, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    invoke-virtual {v2, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    :cond_4
    return-object v2

    :cond_5
    instance-of v2, p0, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v2, :cond_9

    new-instance v2, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    check-cast p0, Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setSocialContext(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setSponsoredTranslation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    invoke-direct {v3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase$Image;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setWidth(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase$Image;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setHeight(I)V

    goto :goto_3

    :cond_6
    move-object v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    invoke-virtual {v2, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setImageList(Ljava/util/List;)V

    if-nez p3, :cond_7

    move-object v1, v0

    goto :goto_4

    :cond_7
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    new-instance v1, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$b;

    invoke-direct {v1, p0, p3, p0}, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil$b;-><init>(Lcom/facebook/ads/NativeBannerAd;Lcom/hisavana/common/base/BaseNative;Lcom/facebook/ads/NativeBannerAd;)V

    invoke-virtual {v2, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    invoke-virtual {v2, p1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    invoke-virtual {v2, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    if-nez p3, :cond_8

    const/4 p0, 0x2

    goto :goto_5

    :cond_8
    invoke-virtual {p3}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    move-result p0

    :goto_5
    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "PlatformUtil"

    invoke-virtual {p1, p2, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static setDebugBuild(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->setDebugBuild(Z)V

    return-void
.end method
