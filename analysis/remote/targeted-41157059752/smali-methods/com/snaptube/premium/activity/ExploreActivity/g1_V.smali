.method public final g1()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->E:Landroid/util/Pair;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/wandoujia/em/common/protomodel/Card;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, p0, v1, v0}, Lcom/snaptube/premium/activity/ExploreActivity;->s1(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->E:Landroid/util/Pair;

    return-void
.end method
