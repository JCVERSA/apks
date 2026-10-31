.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;->onDestroy()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->o:Lcom/snaptube/taskManager/TaskMessageCenter$d;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/TaskMessageCenter;->y(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    return-void
.end method
