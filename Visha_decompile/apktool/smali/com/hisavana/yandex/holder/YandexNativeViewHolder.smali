.class public Lcom/hisavana/yandex/holder/YandexNativeViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;-><init>()V

    const-string v0, "YandexNativeViewHolder"

    iput-object v0, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->addContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public createAdDisclaimerView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p0, Lcom/yandex/mobile/ads/nativeads/MediaView;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/MediaView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/hisavana/yandex/R$layout;->m_yandex_native_ad_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    iput-object p1, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    return-object p1
.end method

.method public setCallToActionView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->g:Landroid/view/View;

    return-void
.end method

.method public setDomain(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->e:Landroid/view/View;

    return-void
.end method

.method public setFeedback(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->j:Landroid/view/View;

    return-void
.end method

.method public setHeadlineView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->f:Landroid/view/View;

    return-void
.end method

.method public setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/NativeAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    iget-object v2, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdView;)V

    iget-object v2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->mediaView:Landroid/view/View;

    instance-of v3, v2, Lcom/yandex/mobile/ads/nativeads/MediaView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/yandex/mobile/ads/nativeads/MediaView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setMediaView(Lcom/yandex/mobile/ads/nativeads/MediaView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->f:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setTitleView(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_2
    iget-object v2, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->j:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setFeedbackView(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_3
    iget-object v2, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->i:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setSponsoredView(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_4
    iget-object v2, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->e:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setDomainView(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_5
    iget-object v2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setIconView(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_6
    iget-object v2, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->g:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setCallToActionView(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_7
    iget-object v2, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->h:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setPriceView(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_8
    iget-object v2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adDisclaimerView:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->setWarningView(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v2

    check-cast v2, Lcom/hisavana/yandex/executer/YandexNative;

    check-cast p1, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v2, p1}, Lcom/hisavana/yandex/executer/YandexNative;->registerImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAd;->getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAd;->getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getIcon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAd;->getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->getIcon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAd;->getAdType()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object p1

    sget-object v2, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    if-eq p1, v2, :cond_b

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/hisavana/common/view/TIconView;

    if-eqz p1, :cond_b

    :cond_a
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/hisavana/common/view/TIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder$Builder;->build()Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/nativeads/NativeAd;->bindNativeAd(Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "YandexNativeViewHolder"

    invoke-virtual {p1, v0, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setPrice(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->h:Landroid/view/View;

    return-void
.end method

.method public setSponsored(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;->i:Landroid/view/View;

    return-void
.end method
