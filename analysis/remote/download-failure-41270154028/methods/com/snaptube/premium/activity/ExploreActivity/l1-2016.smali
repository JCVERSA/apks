.method public final l1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "crack_code"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->p:I

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->C0()V

    iget p2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->p:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->m1(Landroid/content/Context;Z)V

    return-void
.end method
