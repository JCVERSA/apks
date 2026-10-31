.method public final r(Lo/ys2;)V
    .locals 8

    iget-object v0, p1, Lo/ys2;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lo/ys2;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lo/ys2;->l:Lcom/snaptube/premium/base/ui/SquareCardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lo/ys2;->m:Lcom/snaptube/premium/base/ui/SquareCardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lo/ys2;->g:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Lo/ys2;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p1, Lo/ys2;->B:Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p1, Lo/ys2;->l:Lcom/snaptube/premium/base/ui/SquareCardView;

    new-array v6, v3, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p1, Lo/ys2;->m:Lcom/snaptube/premium/base/ui/SquareCardView;

    new-array v7, v3, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v1

    const/4 v1, 0x1

    aput-object v4, v7, v1

    aput-object v6, v7, v3

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p1, Lo/ys2;->b:Lcom/snaptube/premium/preview/audio/view/ForbiddenTouchConstraintLayout;

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v2, "setDuration(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$d;

    invoke-direct {v0, p1, p0}, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController$d;-><init>(Lo/ys2;Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
