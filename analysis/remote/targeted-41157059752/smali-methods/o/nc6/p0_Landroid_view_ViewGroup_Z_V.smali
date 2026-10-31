.method public final p0(Landroid/view/ViewGroup;Z)V
    .locals 1

    const/4 v0, 0x2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "tspera_opgsr"

    const-string p2, "tag_progress"

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x6

    if-nez p2, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, p1}, Lo/nc6;->h0(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x5

    return-void
.end method
