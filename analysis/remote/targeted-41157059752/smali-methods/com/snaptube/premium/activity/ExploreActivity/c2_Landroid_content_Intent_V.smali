.method public final c2(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
