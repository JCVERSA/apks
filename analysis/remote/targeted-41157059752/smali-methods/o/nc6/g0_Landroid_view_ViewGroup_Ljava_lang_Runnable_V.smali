.method public final g0(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x2

    const-string p2, "tsggabr_soer"

    const-string p2, "tag_progress"

    const/4 v1, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x5

    if-nez p2, :cond_1

    const/4 v1, 0x1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x5

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget p2, Lcom/snaptube/ads/R$id;->ad_text_label_close_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x7

    if-eqz p1, :cond_2

    const/4 v1, 0x7

    sget p2, Lcom/snaptube/ads/R$id;->ad_text_label:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x7

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v1, 0x1

    return-void
.end method
