.class public final Lcom/yandex/mobile/ads/impl/qb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gs;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rp;)V
    .locals 1

    const-string v0, "closeButtonController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qb0;->a:Lcom/yandex/mobile/ads/impl/rp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/pd0;Lcom/yandex/mobile/ads/impl/o8;)Landroid/widget/RelativeLayout;
    .locals 7

    .line 1
    const-string v0, "contentView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    .line 4
    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v1, p2}, Lcom/yandex/mobile/ads/impl/m8;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/high16 v4, 0x42800000    # 64.0f

    .line 9
    invoke-static {v1, v4}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result v4

    .line 10
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v5, v4

    .line 11
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 12
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v5, v4

    .line 15
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 16
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 18
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-static {v1, p2}, Lcom/yandex/mobile/ads/impl/m8;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    .line 20
    invoke-virtual {v3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-static {v1, p1}, Lcom/yandex/mobile/ads/impl/m8;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pd0;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->d()Landroid/view/View;

    move-result-object p0

    .line 23
    invoke-virtual {v3, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v3
.end method

.method public final a()V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->a()V

    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 26
    const-string p0, "rootLayout"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p0, Lcom/yandex/mobile/ads/impl/l8;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/rp;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->c()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qb0;->a:Lcom/yandex/mobile/ads/impl/rp;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/rp;->invalidate()V

    return-void
.end method
