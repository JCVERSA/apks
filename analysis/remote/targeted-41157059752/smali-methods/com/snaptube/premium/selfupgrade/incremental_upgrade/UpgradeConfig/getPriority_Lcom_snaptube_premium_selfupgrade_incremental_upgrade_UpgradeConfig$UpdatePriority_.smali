.method public getPriority()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->priority:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    :goto_0
    return-object v0
.end method
