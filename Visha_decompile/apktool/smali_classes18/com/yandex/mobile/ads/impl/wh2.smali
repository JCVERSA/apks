.class public final Lcom/yandex/mobile/ads/impl/wh2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/mobile/ads/impl/hi2;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/hi2;

    new-instance v1, Lcom/yandex/mobile/ads/impl/sf1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/sf1;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/ii2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/ii2;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/hi2;-><init>(Lcom/yandex/mobile/ads/impl/sf1;Lcom/yandex/mobile/ads/impl/ii2;)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/wh2;->a:Lcom/yandex/mobile/ads/impl/hi2;

    return-void
.end method

.method public static final a(IF)I
    .locals 2

    const/16 v0, 0x64

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/16 p1, 0xff

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 1
    invoke-static {p1, v0}, Lwn8;->g(II)I

    move-result p1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lwn8;->d(II)I

    move-result p1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/content/Context;)I
    .locals 1

    .line 23
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 24
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public static final a(Landroid/content/Context;F)I
    .locals 1

    .line 10
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 13
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/content/Context;I)I
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    .line 7
    invoke-static {p1}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kf1;)I
    .locals 2

    .line 25
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedOrientation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 27
    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->e:Lcom/yandex/mobile/ads/impl/kf1;

    if-eq v0, v1, :cond_1

    if-ne p1, v1, :cond_0

    .line 28
    sget-object p1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/content/Context;)I

    move-result p0

    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/content/Context;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final a(Landroid/view/View;)I
    .locals 3

    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 15
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_1
    if-lez p0, :cond_2

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x64

    mul-int/2addr p0, v1

    .line 18
    div-int/2addr v0, p0

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 2

    .line 8
    const-string v0, "view"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/wh2$a;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/wh2$a;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public static final a(Landroid/view/View;I)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/view/View;)I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(IF)F
    .locals 1

    .line 1
    int-to-float p0, p0

    const/4 v0, 0x0

    add-float/2addr p0, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    return p0
.end method

.method public static final b(Landroid/content/Context;)I
    .locals 2

    .line 5
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    invoke-static {v1, p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(IF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final b(Landroid/view/View;)I
    .locals 1

    .line 2
    const-string v0, "view"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/yandex/mobile/ads/impl/wh2;->a:Lcom/yandex/mobile/ads/impl/hi2;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/hi2;->a(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Landroid/content/Context;)I
    .locals 2

    .line 15
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/eb0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    invoke-static {v1, p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(IF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final c(Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 1
    const-string v1, "view"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [I

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    aget v2, v1, v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x1

    .line 6
    aget v1, v1, v4

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    .line 8
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    iget p0, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-le p0, v2, :cond_1

    .line 12
    iget p0, v6, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-lt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v4

    .line 13
    :goto_1
    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_3

    .line 14
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v4

    :goto_3
    if-nez p0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v0, v4

    :cond_5
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public static final d(Landroid/view/View;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final e(Landroid/view/View;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
