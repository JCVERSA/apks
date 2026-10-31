.method public final h2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    invoke-virtual {v0}, Lcom/snaptube/premium/fragment/TabHostFragment;->O2()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/fragment/TabHostFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/premium/fragment/TabHostFragment;

    invoke-virtual {v0}, Lcom/snaptube/premium/fragment/TabHostFragment;->O2()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/ry6;

    if-eqz v1, :cond_0

    check-cast v0, Lo/ry6;

    invoke-interface {v0}, Lo/ry6;->V0()V

    :cond_0
    return-void
.end method
