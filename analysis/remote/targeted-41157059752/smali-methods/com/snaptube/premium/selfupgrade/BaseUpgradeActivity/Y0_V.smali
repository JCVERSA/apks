.method public final Y0()V
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->p1()Lo/xy8;

    move-result-object v0

    iget-object v0, v0, Lo/xy8;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->p1()Lo/xy8;

    move-result-object v0

    iget-object v0, v0, Lo/xy8;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->T1(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->J1()V

    :goto_1
    return-void
.end method
