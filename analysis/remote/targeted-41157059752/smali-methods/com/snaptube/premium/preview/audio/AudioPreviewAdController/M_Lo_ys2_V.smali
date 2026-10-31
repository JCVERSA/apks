.method public final M(Lo/ys2;)V
    .locals 8

    const-string v0, "root"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lo/ys2;->d:Lcom/snaptube/ads/nativead/AdView;

    const-string v1, "adview"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060388

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v1, p1, Lo/ys2;->b:Lcom/snaptube/premium/preview/audio/view/ForbiddenTouchConstraintLayout;

    const-string v2, "adContainer"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lo/ys2;->w:Lcom/snaptube/premium/views/NestedBottomSheetHost;

    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d0(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    new-instance v3, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$e;

    invoke-direct {v3, v1}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$e;-><init>(Lcom/snaptube/premium/preview/audio/view/ForbiddenTouchConstraintLayout;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;)V

    iget-object v1, p1, Lo/ys2;->c:Landroid/widget/ImageView;

    const-string v2, "adLabel"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snaptube/util/ViewExtKt;->g(Landroid/view/View;Z)V

    iget-object v1, p1, Lo/ys2;->j:Lcom/snaptube/premium/preview/audio/view/CountDownView;

    const-string v3, "countDown"

    invoke-static {v1, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/snaptube/util/ViewExtKt;->g(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->h()Lo/gb;

    move-result-object v1

    sget-object v2, Lo/jb;->e:Lo/jb$a;

    iget-object v3, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v3}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pos(...)"

    invoke-static {v3, v4}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lo/jb$a;->a(Ljava/lang/String;)Lo/jb;

    move-result-object v2

    const-string v3, "ad_request_scene"

    const-string v4, "audio_preview"

    invoke-virtual {v2, v3, v4}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/gb;->c(Lo/jb;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Lo/x24;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/y24;->a(Lo/x24;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v5, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$setupAd$2;

    const/4 v1, 0x0

    invoke-direct {v5, v0, p0, p1, v1}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$setupAd$2;-><init>(Lcom/snaptube/ads/nativead/AdView;Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;Lo/ys2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lo/wd0;->d(Lo/w61;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lo/rx2;ILjava/lang/Object;)Lo/tt3;

    :cond_1
    return-void
.end method
