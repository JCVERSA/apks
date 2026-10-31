.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->w:Z

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->e:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->e:Lo/wu7;

    :cond_0
    return-void
.end method
