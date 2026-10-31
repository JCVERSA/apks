.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->p1(Landroid/content/Intent;)Z

    return-void
.end method
