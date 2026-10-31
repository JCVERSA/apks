.method public static synthetic i0(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    sget v0, Lcom/snaptube/ads/R$id;->nativeAdBlurBackground:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x1

    check-cast p0, Landroid/widget/ImageView;

    const/4 v2, 0x7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x5

    if-nez v0, :cond_0

    const/16 v0, 0x19

    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->setBlurImage(Landroid/view/View;Landroid/graphics/Bitmap;II)V

    :cond_0
    return-void
.end method
