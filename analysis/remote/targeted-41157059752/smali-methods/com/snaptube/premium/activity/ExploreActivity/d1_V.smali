.method public final d1()V
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->v2()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->f:Z

    :cond_0
    return-void
.end method
