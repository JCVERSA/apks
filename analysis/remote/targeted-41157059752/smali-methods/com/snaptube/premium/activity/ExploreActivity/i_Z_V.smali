.method public i(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090698

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/premium/fragment/HomePageFragment;

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/fragment/HomePageFragment;->n3(Z)V

    :cond_0
    return-void
.end method
