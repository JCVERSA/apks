.method public final A2()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->u:Lo/wu7;

    :cond_0
    return-void
.end method
