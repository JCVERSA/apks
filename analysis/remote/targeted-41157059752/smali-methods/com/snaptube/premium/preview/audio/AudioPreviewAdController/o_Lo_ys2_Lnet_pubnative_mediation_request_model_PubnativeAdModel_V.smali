.method public final o(Lo/ys2;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 3

    iget-object v0, p1, Lo/ys2;->j:Lcom/snaptube/premium/preview/audio/view/CountDownView;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snaptube/util/ViewExtKt;->g(Landroid/view/View;Z)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/snaptube/premium/preview/audio/view/CountDownView;->setCountDown(I)V

    new-instance v2, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$handleCountDownAndLabel$1$1;

    invoke-direct {v2, v0, p2}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$handleCountDownAndLabel$1$1;-><init>(Lcom/snaptube/premium/preview/audio/view/CountDownView;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    invoke-virtual {v0, v2}, Lcom/snaptube/premium/preview/audio/view/CountDownView;->setOnClickClose(Lo/dx2;)V

    new-instance v2, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$handleCountDownAndLabel$1$2;

    invoke-direct {v2, p0, p1}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$handleCountDownAndLabel$1$2;-><init>(Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;Lo/ys2;)V

    invoke-virtual {v0, v2}, Lcom/snaptube/premium/preview/audio/view/CountDownView;->setOnCountDownFinished(Lo/bx2;)V

    iget-object v0, p1, Lo/ys2;->c:Landroid/widget/ImageView;

    const-string v2, "adLabel"

    invoke-static {v0, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/snaptube/util/ViewExtKt;->g(Landroid/view/View;Z)V

    invoke-virtual {p2}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->isNative()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lo/ys2;->b()Lcom/snaptube/premium/views/PopupNestedContentLayout;

    move-result-object p2

    const v0, 0x7f0906ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$handleCountDownAndLabel$2$1;

    invoke-direct {v0, p2, p1}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$handleCountDownAndLabel$2$1;-><init>(Landroid/view/View;Lo/ys2;)V

    invoke-static {p2, v0}, Lo/kx8;->b(Landroid/view/View;Lo/dx2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/ys2;->b()Lcom/snaptube/premium/views/PopupNestedContentLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/qe8;->d(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {v0}, Lo/xp2;->a(F)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iget-object v0, p1, Lo/ys2;->c:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lo/xp2;->a(F)I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lo/kx8;->e(Landroid/view/View;I)V

    iget-object p1, p1, Lo/ys2;->j:Lcom/snaptube/premium/preview/audio/view/CountDownView;

    const-string v0, "countDown"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lo/kx8;->d(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
