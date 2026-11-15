.class public final Lcom/yandex/mobile/ads/impl/pl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o10;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/o10;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o10;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/pl1;-><init>(Lcom/yandex/mobile/ads/impl/o10;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o10;)V
    .locals 1

    .line 3
    const-string v0, "dimensionConverter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pl1;->a:Lcom/yandex/mobile/ads/impl/o10;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/widget/ProgressBar;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_video_progress_bar_background:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pl1;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x42340000    # 45.0f

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result p0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x11

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
