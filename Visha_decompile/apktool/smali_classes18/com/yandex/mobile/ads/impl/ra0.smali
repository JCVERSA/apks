.class public final Lcom/yandex/mobile/ads/impl/ra0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/rt;

.field private final c:Lcom/yandex/mobile/ads/impl/sa0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#66000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/impl/ra0;->d:I

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/impl/ra0;->e:I

    const-string v0, "#7f7f7f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/yandex/mobile/ads/impl/ra0;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/sa0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssets"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackAppearanceResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ra0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ra0;->b:Lcom/yandex/mobile/ads/impl/rt;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ra0;->c:Lcom/yandex/mobile/ads/impl/sa0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/widget/FrameLayout;I)V
    .locals 4

    const-string v0, "feedbackView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackContainer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ra0;->c:Lcom/yandex/mobile/ads/impl/sa0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sa0;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ra0;->b:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->i()Lcom/yandex/mobile/ads/impl/xt;

    move-result-object v0

    if-eqz v0, :cond_1

    sget p3, Lcom/yandex/mobile/ads/impl/ra0;->f:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ra0;->a:Landroid/content/Context;

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_internal_ic_close_gray:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p3, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ra0;->b:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ra0;->a:Landroid/content/Context;

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_internal_ic_close_gray:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p0, Lcom/yandex/mobile/ads/impl/ra0;->d:I

    sget p1, Lcom/yandex/mobile/ads/impl/ra0;->e:I

    filled-new-array {p0, p1}, [I

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p1, v0, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p2, v2, v2, v2, p3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    sget p3, Lcom/yandex/mobile/ads/impl/ra0;->f:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ra0;->a:Landroid/content/Context;

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_internal_ic_close_gray:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p3, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method
