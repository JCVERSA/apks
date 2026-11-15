.class public final Lcom/yandex/mobile/ads/impl/uy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdViewProvider;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/yandex/mobile/ads/impl/q71;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/mobile/ads/impl/q71;)V
    .locals 1

    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdWeakViewProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uy0;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    return-void
.end method


# virtual methods
.method public final getAgeView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "age"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getBodyView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "body"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCallToActionView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "call_to_action"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getDomainView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getFeedbackView()Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "feedback"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMediaView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "media"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getNativeAdView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->a:Landroid/view/View;

    return-object p0
.end method

.method public final getPriceView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "price"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getRatingView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "rating"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getReviewCountView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "review_count"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSponsoredView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "sponsored"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getWarningView()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uy0;->b:Lcom/yandex/mobile/ads/impl/q71;

    const-string v0, "warning"

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/q71;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
