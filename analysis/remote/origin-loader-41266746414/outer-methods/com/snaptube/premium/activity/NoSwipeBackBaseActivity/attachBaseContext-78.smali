.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->b:Lcom/snaptube/premium/activity/b;

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->forceUseNightMode()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/snaptube/premium/activity/b;->d(Landroid/content/Context;Z)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
