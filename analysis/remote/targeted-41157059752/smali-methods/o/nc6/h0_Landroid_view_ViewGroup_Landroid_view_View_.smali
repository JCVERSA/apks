.method public final h0(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x5

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v5, 0x3

    invoke-direct {v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v5, 0x1

    sget v2, Lcom/snaptube/premium/base/ui/R$drawable;->progressbar_circle:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x4

    new-instance v2, Landroid/widget/FrameLayout;

    const/4 v5, 0x3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v5, 0x7

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v5, 0x5

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    move v5, v4

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x5

    const/16 v4, 0x11

    const/4 v5, 0x5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x7

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "tag_progress"

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x4

    sget v1, Lcom/snaptube/ads/R$id;->loading_progress:I

    const/4 v5, 0x5

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x3

    sget v0, Lcom/snaptube/ads/R$id;->ad_text_label_close_layout:I

    const/4 v5, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v5, 0x5

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    const/4 v5, 0x4

    sget v0, Lcom/snaptube/ads/R$id;->ad_text_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x2

    const/4 v0, 0x4

    const/4 v5, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v5, 0x5

    return-object v2
.end method
