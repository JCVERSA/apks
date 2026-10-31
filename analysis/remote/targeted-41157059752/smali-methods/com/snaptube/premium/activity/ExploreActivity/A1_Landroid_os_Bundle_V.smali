.method public final A1(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->t:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->y2(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->c1()V

    invoke-direct {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->z1()V

    return-void
.end method
