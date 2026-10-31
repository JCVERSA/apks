.method public final synthetic G1(Landroid/os/Bundle;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    iget-boolean p3, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/snaptube/premium/activity/ExploreActivity;->x:Z

    if-nez p3, :cond_0

    invoke-static {p2}, Lo/ya2;->a(Landroid/view/View;)Lo/ya2;

    move-result-object p3

    iput-object p3, p0, Lcom/snaptube/premium/activity/ExploreActivity;->A:Lo/ya2;

    invoke-virtual {p0, p2}, Lcom/snaptube/base/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->A1(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->w1()V

    :cond_0
    return-void
.end method
