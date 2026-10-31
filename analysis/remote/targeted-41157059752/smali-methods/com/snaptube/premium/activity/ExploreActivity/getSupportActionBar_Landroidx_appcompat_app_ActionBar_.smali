.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->i:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method
