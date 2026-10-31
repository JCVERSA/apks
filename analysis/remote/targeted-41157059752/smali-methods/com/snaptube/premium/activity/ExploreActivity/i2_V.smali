.method public final i2()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->n:Lo/hh3;

    invoke-interface {v0}, Lo/hh3;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->h2()V

    :cond_0
    return-void
.end method
