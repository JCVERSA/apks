.class public abstract Lty3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/transsion/widgetslib/flipper/FlipperLayout;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lty3;->d(Lcom/transsion/widgetslib/flipper/FlipperLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static final b(IIZI)I
    .locals 0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    if-nez p0, :cond_0

    add-int/lit8 p0, p1, -0x2

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    if-ne p0, p1, :cond_1

    move p0, p3

    :cond_1
    :goto_0
    return p0
.end method

.method public static final c(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroid/view/ViewGroup;
    .locals 11

    const/4 v0, 0x1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_focus:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_focus_hios:I

    invoke-static {v1, v2, v3}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    sget v2, Lcom/transsion/widgetslib/R$id;->stubDots:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v2, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v0, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_radius:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_flipper_layout_circle_indicator_margin_lr:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    :goto_0
    if-ge v5, v3, :cond_3

    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lsy3;

    invoke-direct {v9, p0, v5}, Lsy3;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic$widgetsLib_release()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    add-int/lit8 v9, v3, -0x1

    if-ne v5, v9, :cond_1

    :cond_0
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v8, v0}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v9, Lty3$a;

    invoke-direct {v9}, Lty3$a;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    sget-object v10, Lzfb;->a:Lzfb;

    invoke-virtual {v2, v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v5, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-object v2
.end method

.method public static final d(Lcom/transsion/widgetslib/flipper/FlipperLayout;ILandroid/view/View;)V
    .locals 2

    const-string p2, "$this_inflateLayoutDot"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lty3;->f(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Landroidx/viewpager2/widget/ViewPager2;IZ)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public static synthetic f(Landroidx/viewpager2/widget/ViewPager2;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Lty3;->e(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    return-void
.end method

.method public static final g(Landroid/view/ViewGroup;IFIZIZ)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p3, p4, p5}, Lty3;->b(IIZI)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p6, :cond_1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    add-int/2addr p1, v1

    :goto_0
    const/4 p6, 0x0

    if-eqz p4, :cond_4

    if-gt p3, v1, :cond_2

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    add-int/lit8 p1, p3, -0x1

    goto :goto_1

    :cond_3
    if-lt p1, p3, :cond_4

    move p1, p6

    :cond_4
    :goto_1
    invoke-static {p1, p3, p4, p5}, Lty3;->b(IIZI)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    :goto_2
    if-ge p6, p3, :cond_7

    invoke-virtual {p0, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    const p5, 0x3f07ae14    # 0.53f

    if-ne p6, v0, :cond_5

    const v1, 0x3f266666    # 0.65f

    mul-float/2addr p5, p2

    sub-float/2addr v1, p5

    goto :goto_3

    :cond_5
    const v1, 0x3df5c28f    # 0.12f

    if-ne p6, p1, :cond_6

    mul-float/2addr p5, p2

    add-float/2addr v1, p5

    :cond_6
    :goto_3
    invoke-virtual {p4, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static final h(Landroid/view/ViewGroup;IIZI)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lty3;->b(IIZI)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-ne p3, p1, :cond_1

    const v0, 0x3f266666    # 0.65f

    goto :goto_1

    :cond_1
    const v0, 0x3df5c28f    # 0.12f

    :goto_1
    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
