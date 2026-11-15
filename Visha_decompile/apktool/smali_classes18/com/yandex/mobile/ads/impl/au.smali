.class public final Lcom/yandex/mobile/ads/impl/au;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/zt;)Lcom/yandex/mobile/ads/impl/k71;
    .locals 3

    const-string v0, "nativeBannerView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/k71$a;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f81;->d:Lcom/yandex/mobile/ads/impl/f81;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/mobile/ads/impl/k71$a;-><init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/f81;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getAgeView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getBodyView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->b(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getCallToActionView()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->c(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getDomainView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->d(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getFaviconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getFeedbackView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->b(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->c(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->d(Landroid/widget/ImageView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getMediaView()Lcom/monetization/ads/nativeads/CustomizableMediaView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getRatingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getReviewCountView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->f(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getSponsoredView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->g(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k71$a;->h(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zt;->getWarningView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/k71$a;->i(Landroid/widget/TextView;)Lcom/yandex/mobile/ads/impl/k71$a;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/k71;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/k71;-><init>(Lcom/yandex/mobile/ads/impl/k71$a;I)V

    return-object v0
.end method
