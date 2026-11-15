.class public abstract Lea7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ea7"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static bridge synthetic a(Landroid/view/View;)F
    .locals 0

    invoke-static {p0}, Lea7;->g(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/view/View;)F
    .locals 0

    invoke-static {p0}, Lea7;->h(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Lea7;->k(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Lea7;->l(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Landroid/widget/TextView;)I
    .locals 0

    invoke-static {p0}, Lea7;->m(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    cmpl-float v1, v1, v3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x3

    invoke-direct {v1, v4, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/high16 v1, 0x43340000    # 180.0f

    rem-float v1, p1, v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v0, v7

    div-float/2addr v0, v3

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v6, p1, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v4, v4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v5
.end method

.method public static g(Landroid/view/View;)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static h(Landroid/view/View;)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static i(Landroid/view/View;)Landroid/view/DisplayCutout;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static j(Landroid/content/Context;[II)I
    .locals 0

    invoke-static {p0}, Lolb;->L(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, p2

    const/4 p2, 0x1

    aget p1, p1, p2

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Lea7;->i(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static l(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Lea7;->i(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static m(Landroid/widget/TextView;)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static n(Landroid/content/Context;[II)I
    .locals 0

    invoke-static {p0}, Lolb;->G(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr p0, p2

    const/4 p2, 0x1

    aget p1, p1, p2

    sub-int/2addr p0, p1

    return p0
.end method

.method public static o(Landroid/widget/PopupWindow;Landroid/widget/TextView;ILandroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lea7$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lea7$a;-><init>(Landroid/widget/PopupWindow;Landroid/widget/TextView;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static p(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/PopupWindow;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lea7;->q(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;
    .locals 33

    move-object/from16 v7, p0

    move/from16 v6, p2

    move/from16 v10, p3

    move/from16 v12, p4

    const/4 v0, 0x0

    if-nez v7, :cond_0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v14, v2

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    sget v5, Lcom/transsion/widgetslib/R$dimen;->os_pop_tip_slide_width_weight:I

    invoke-static {v15, v5}, Lolb;->t(Landroid/content/Context;I)F

    move-result v5

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_pop_tip_center_width_weight:I

    invoke-static {v15, v8}, Lolb;->t(Landroid/content/Context;I)F

    move-result v8

    invoke-static {v15}, Lolb;->H(Landroid/content/Context;)I

    move-result v13

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v2, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v11, v9

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v2, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v2, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v13

    mul-float/2addr v8, v2

    float-to-int v8, v8

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_ultra_small_pop_tip_slide_width_weight:I

    invoke-static {v15, v3}, Lolb;->t(Landroid/content/Context;I)F

    move-result v3

    invoke-static {v15}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2

    move/from16 v19, v8

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v3, v8

    goto :goto_1

    :cond_2
    move/from16 v19, v8

    mul-float v3, v2, v5

    float-to-int v3, v3

    :goto_1
    const/4 v8, 0x2

    move/from16 v20, v3

    new-array v3, v8, [I

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationInWindow([I)V

    move/from16 v21, v9

    new-array v9, v8, [I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {v15, v9, v11}, Lea7;->j(Landroid/content/Context;[II)I

    move-result v8

    invoke-static {v15, v9, v11}, Lea7;->n(Landroid/content/Context;[II)I

    move-result v9

    move/from16 v22, v14

    sub-int v14, v9, v8

    move/from16 v23, v0

    const/4 v0, 0x0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v0, 0x50

    if-eq v6, v0, :cond_3

    const/16 v0, 0x51

    if-eq v6, v0, :cond_3

    const v0, 0x800055

    if-ne v6, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/16 v0, 0x30

    if-eq v6, v0, :cond_5

    const/16 v0, 0x31

    if-eq v6, v0, :cond_5

    const v0, 0x800035

    if-ne v6, v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    aget v9, v3, v0

    add-int/2addr v9, v12

    sub-int/2addr v9, v11

    sub-int/2addr v9, v8

    const/4 v14, 0x0

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v14, v9

    goto :goto_3

    :goto_2
    aget v18, v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v18, v18, v0

    add-int v18, v18, v11

    add-int v18, v18, v12

    sub-int v9, v9, v18

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v14, v0

    :cond_6
    :goto_3
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_popup_tip_layout:I

    const/4 v9, 0x0

    invoke-static {v15, v0, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v9, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    move/from16 v25, v11

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move/from16 v26, v8

    sget v8, Lcom/transsion/widgetslib/R$id;->os_popup_tip_text:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v27, v3

    sget v3, Lcom/transsion/widgetslib/R$id;->os_popup_tip_close:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v28, v3

    sget v3, Lcom/transsion/widgetslib/R$id;->os_popup_tip_text_father:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const/16 v7, 0x50

    if-eq v6, v7, :cond_7

    const/16 v7, 0x51

    if-eq v6, v7, :cond_9

    const v7, 0x800055

    if-ne v6, v7, :cond_8

    :cond_7
    const/16 v7, 0x51

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_4
    const/16 v10, 0x30

    goto :goto_7

    :cond_9
    :goto_5
    if-ne v6, v7, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0xe

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v15}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const/16 v10, 0x20

    invoke-static {v15, v10}, Lolb;->h(Landroid/content/Context;I)I

    move-result v12

    int-to-float v10, v12

    sub-float/2addr v7, v10

    float-to-int v7, v7

    move/from16 v20, v7

    goto :goto_6

    :cond_a
    move/from16 v20, v19

    :cond_b
    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, 0x3

    invoke-virtual {v7, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    :goto_7
    if-eq v6, v10, :cond_d

    const/16 v10, 0x31

    if-eq v6, v10, :cond_e

    const v12, 0x800035

    if-ne v6, v12, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v24, v0

    goto :goto_a

    :cond_d
    const/16 v10, 0x31

    :cond_e
    :goto_8
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v12, 0xc

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-ne v6, v10, :cond_10

    const/16 v10, 0xe

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v15}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    move-object/from16 v24, v0

    const/16 v12, 0x20

    invoke-static {v15, v12}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v10, v0

    float-to-int v0, v10

    move/from16 v20, v0

    goto :goto_9

    :cond_f
    move-object/from16 v24, v0

    move/from16 v20, v19

    goto :goto_9

    :cond_10
    move-object/from16 v24, v0

    :goto_9
    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v11, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_a
    const v0, 0x800013

    const/16 v10, 0xf

    if-ne v6, v0, :cond_13

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_popup_tip_arrow:I

    invoke-static {v15, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v7, 0x0

    return-object v7

    :cond_11
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v12, 0x15

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v12, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_height:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v12, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_width:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-static {v0, v12}, Lea7;->f(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x10

    invoke-virtual {v7, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v15}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/16 v12, 0x20

    invoke-static {v15, v12}, Lolb;->h(Landroid/content/Context;I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v0, v10

    float-to-int v0, v0

    move/from16 v20, v0

    goto :goto_b

    :cond_12
    move/from16 v20, v19

    :cond_13
    :goto_b
    const v0, 0x800015

    if-ne v6, v0, :cond_16

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_popup_tip_arrow:I

    invoke-static {v15, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v7, 0x0

    return-object v7

    :cond_14
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0x14

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v10, 0xf

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v10, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_height:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v10, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_width:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-static {v0, v10}, Lea7;->f(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-virtual {v7, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v15}, Lolb;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/16 v4, 0x20

    invoke-static {v15, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    move/from16 v20, v0

    goto :goto_c

    :cond_15
    move/from16 v20, v19

    :cond_16
    :goto_c
    if-nez v7, :cond_17

    const/4 v0, 0x0

    return-object v0

    :cond_17
    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p1 .. p1}, Lolb;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    if-lez v14, :cond_18

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, v14, v0

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    :cond_18
    invoke-virtual {v8}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v15}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_pad_max_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    invoke-static {v15}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_small_popup_tip_pad_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-ge v13, v1, :cond_19

    mul-float/2addr v2, v5

    float-to-int v1, v2

    goto :goto_d

    :cond_19
    move/from16 v1, v20

    :goto_d
    sub-int v2, v1, v0

    sub-int/2addr v2, v3

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v0, v0

    add-float/2addr v4, v0

    int-to-float v0, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    sget-object v3, Lea7;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showPopupTip, textRemainSpace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", popupWidthTmp: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", popupWidthMax: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", popupWidth: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    move-object/from16 v1, v24

    invoke-direct {v10, v1, v12, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-static {v10, v8, v14, v11}, Lea7;->o(Landroid/widget/PopupWindow;Landroid/widget/TextView;ILandroid/view/View;)V

    new-instance v0, Lea7$b;

    invoke-direct {v0, v1, v15}, Lea7$b;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 v2, 0x30

    if-eq v6, v2, :cond_1a

    const/16 v2, 0x31

    if-eq v6, v2, :cond_1a

    const v2, 0x800035

    if-ne v6, v2, :cond_1b

    :cond_1a
    move-object/from16 v7, p0

    move/from16 v9, p3

    move/from16 v5, p4

    goto :goto_f

    :cond_1b
    move-object/from16 v7, p0

    move/from16 v9, p3

    move/from16 v5, p4

    invoke-virtual {v10, v7, v9, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    move-object/from16 v24, v1

    move/from16 v0, v23

    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_15

    :goto_f
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, v27, v0

    const/4 v0, 0x1

    aget v4, v27, v0

    sub-int v0, v4, v26

    if-lez v0, :cond_1c

    if-le v2, v0, :cond_1c

    move v2, v0

    :cond_1c
    const/16 v0, 0x30

    if-ne v6, v0, :cond_1e

    move/from16 v0, v23

    if-ge v3, v0, :cond_1d

    sub-int v16, v0, v3

    goto :goto_10

    :cond_1d
    const/16 v16, 0x0

    :goto_10
    add-int/2addr v3, v9

    add-int v3, v3, v16

    move-object/from16 v24, v1

    add-int v1, v3, v12

    move/from16 p1, v3

    sub-int v3, v13, v0

    if-le v1, v3, :cond_24

    goto :goto_13

    :cond_1e
    move-object/from16 v24, v1

    move/from16 v0, v23

    const/16 v1, 0x31

    if-ne v6, v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v12

    const/16 v16, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v9

    add-int/2addr v3, v1

    if-ge v3, v0, :cond_1f

    move v3, v0

    :cond_1f
    add-int v1, v3, v12

    move/from16 p1, v3

    sub-int v3, v13, v0

    if-le v1, v3, :cond_24

    goto :goto_13

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    if-le v1, v13, :cond_21

    invoke-static {v15}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_21

    sub-int/2addr v1, v13

    goto :goto_11

    :cond_21
    const/4 v1, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v16

    sub-int v16, v12, v16

    add-int v16, v16, v1

    add-int/2addr v3, v9

    if-eqz v22, :cond_22

    add-int v3, v3, v16

    goto :goto_12

    :cond_22
    sub-int v3, v3, v16

    :goto_12
    if-ge v3, v0, :cond_23

    move v3, v0

    :cond_23
    add-int v1, v3, v12

    move/from16 p1, v3

    sub-int v3, v13, v0

    if-le v1, v3, :cond_24

    :goto_13
    sub-int/2addr v3, v12

    goto :goto_14

    :cond_24
    move/from16 v3, p1

    :goto_14
    add-int v2, v2, v25

    sub-int/2addr v4, v2

    add-int/2addr v4, v5

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    invoke-virtual {v10, v7, v1, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_e

    :goto_15
    invoke-virtual {v8, v1}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v4, Lea7$c;

    move/from16 v16, v0

    move-object/from16 v2, v24

    move-object v0, v4

    move/from16 v1, v21

    move-object/from16 v29, v28

    move-object v3, v8

    move-object/from16 v30, v4

    move-object v4, v11

    move v5, v14

    move/from16 v6, p2

    move-object/from16 v7, p0

    move-object v14, v8

    move/from16 v17, v19

    move/from16 v8, v16

    move-object v9, v10

    move-object v11, v10

    move/from16 v10, p3

    move-object/from16 v31, v11

    move/from16 v11, v25

    move/from16 v16, v12

    move/from16 v12, p4

    move/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v32, v14

    move/from16 v14, v22

    move-object/from16 v16, v15

    move/from16 v15, v18

    invoke-direct/range {v0 .. v17}, Lea7$c;-><init>(ILandroid/view/View;Landroid/widget/TextView;Landroid/view/View;IILandroid/view/View;ILandroid/widget/PopupWindow;IIIIZILandroid/content/Context;I)V

    move-object/from16 v0, v30

    move-object/from16 v8, v32

    invoke-virtual {v8, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    move-object/from16 v3, v29

    if-eqz v3, :cond_25

    new-instance v0, Lea7$d;

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lea7$d;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_16

    :cond_25
    move-object/from16 v1, v31

    :goto_16
    return-object v1
.end method
