.method public A1()V
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->d2()V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->l1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "force_update_dialog"

    invoke-static {v0, v3, v1, v2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->x(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
