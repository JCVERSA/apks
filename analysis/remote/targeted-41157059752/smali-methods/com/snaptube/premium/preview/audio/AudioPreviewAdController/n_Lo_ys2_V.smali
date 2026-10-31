.method public final n(Lo/ys2;)V
    .locals 3

    iget-object v0, p1, Lo/ys2;->d:Lcom/snaptube/ads/nativead/AdView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p1, p1, Lo/ys2;->l:Lcom/snaptube/premium/base/ui/SquareCardView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
