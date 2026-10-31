.method public static G()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    :cond_0
    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
