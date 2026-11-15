.class public final Lcom/yandex/mobile/ads/impl/m8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result p1

    int-to-float v0, v0

    .line 4
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float p1, p1

    .line 5
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result p0

    .line 6
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p0, -0x2

    invoke-direct {p1, p0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 p0, 0xd

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p1
.end method

.method public static final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)",
            "Landroid/widget/RelativeLayout$LayoutParams;"
        }
    .end annotation

    .line 24
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->r()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->c()I

    move-result p1

    int-to-float v0, v0

    .line 26
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float p1, p1

    .line 27
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result p0

    .line 28
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p0, -0x2

    .line 30
    invoke-direct {p1, p0, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 p0, 0xd

    .line 31
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p1
.end method

.method public static final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pd0;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 10

    .line 9
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "anchorView"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 10
    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x42800000    # 64.0f

    .line 11
    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1

    .line 12
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 16
    iget v5, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    add-int/2addr v5, v1

    .line 17
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 18
    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v5, v9, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v7

    .line 19
    :goto_1
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v8, :cond_3

    add-int/2addr p1, v1

    .line 20
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 21
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt p1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v7, v6

    :cond_3
    :goto_2
    shr-int/lit8 p0, v1, 0x1

    sub-int/2addr v2, v1

    .line 22
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p0, v2

    if-nez v5, :cond_5

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    neg-int p0, v3

    .line 23
    :cond_5
    :goto_3
    invoke-virtual {v4, v6, p0, p0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v4
.end method
