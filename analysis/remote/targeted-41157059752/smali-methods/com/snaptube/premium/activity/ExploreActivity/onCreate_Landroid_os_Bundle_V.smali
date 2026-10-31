.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f1201a6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "activity_onCreate"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/snaptube/premium/activity/ExploreActivity;->q:Lo/x52;

    invoke-virtual {v2}, Lo/x52;->e()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->E1()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/activity/ExploreActivity;->i1(Landroid/os/Bundle;)Z

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    return-void
.end method
