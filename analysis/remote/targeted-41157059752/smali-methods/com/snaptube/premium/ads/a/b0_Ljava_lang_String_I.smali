.method public b0(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v0, "small_screen_pixels"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v2, v0, :cond_1

    const-string v0, "small_screen_flavor"

    invoke-virtual {p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const-string v0, "flavor"

    invoke-virtual {p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
