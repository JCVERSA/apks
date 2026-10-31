.method public l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/snaptube/premium/activity/ExploreActivity;->h1(Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/premium/activity/ExploreActivity;->s1(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
