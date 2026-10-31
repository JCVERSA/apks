.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->j3()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->l4()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->l1()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p0}, Lo/vh8;->d(Landroid/app/Activity;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;Lo/gx0;)V

    :cond_0
    return-void
.end method
