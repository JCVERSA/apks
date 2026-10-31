.method public onResume()V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v1, "activity_onResume"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    invoke-super {p0}, Lcom/snaptube/premium/activity/NoSwipeBackBaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->j1()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/LaunchLogger;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->d()V

    invoke-virtual {v0}, Lcom/snaptube/premium/log/LaunchLogger;->z()V

    return-void
.end method
