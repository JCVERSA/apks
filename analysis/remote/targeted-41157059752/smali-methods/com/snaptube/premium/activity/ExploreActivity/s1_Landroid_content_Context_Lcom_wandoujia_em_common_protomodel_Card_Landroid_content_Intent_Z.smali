.method public final s1(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "extra.key.explore_mark"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object p1, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    const-string p2, "the intent lost handler"

    invoke-static {p1, p2}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f090698

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lo/je3;

    if-eqz v2, :cond_1

    check-cast v0, Lo/je3;

    invoke-interface {v0, p1, p2, p3}, Lo/je3;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "phoenix.intent.action.EXPLORE_NAVIGATE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->m:Lo/ke3;

    invoke-interface {v0, p1, p2, p3}, Lo/je3;->l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
