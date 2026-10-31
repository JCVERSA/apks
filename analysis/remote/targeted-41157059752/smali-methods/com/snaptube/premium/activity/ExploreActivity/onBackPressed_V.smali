.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/activity/ExploreActivity;->F:Ljava/lang/String;

    const-string v1, "onBackPressed isShowingSplashAd"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/activity/b;->y(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/bh5;

    if-eqz v1, :cond_3

    check-cast v0, Lo/bh5;

    invoke-interface {v0}, Lo/bh5;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onBackPressed()V

    return-void
.end method
