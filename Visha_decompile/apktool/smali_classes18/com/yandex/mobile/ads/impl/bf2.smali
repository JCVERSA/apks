.class public final Lcom/yandex/mobile/ads/impl/bf2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pl1;

.field private final b:Lcom/yandex/mobile/ads/impl/pf2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/pl1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/pl1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/pf2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/pf2;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/bf2;-><init>(Lcom/yandex/mobile/ads/impl/pl1;Lcom/yandex/mobile/ads/impl/pf2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pl1;Lcom/yandex/mobile/ads/impl/pf2;)V
    .locals 1

    .line 4
    const-string v0, "progressBarCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPreviewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bf2;->a:Lcom/yandex/mobile/ads/impl/pl1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bf2;->b:Lcom/yandex/mobile/ads/impl/pf2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lb2;)Lcom/yandex/mobile/ads/impl/af2;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bf2;->b:Lcom/yandex/mobile/ads/impl/pf2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/lb2;->a()Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const/16 p2, 0x8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bf2;->a:Lcom/yandex/mobile/ads/impl/pl1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pl1;->a(Landroid/content/Context;)Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/af2;

    invoke-direct {p2, p1, p0, v0}, Lcom/yandex/mobile/ads/impl/af2;-><init>(Landroid/content/Context;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    const/high16 p0, -0x1000000

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method
