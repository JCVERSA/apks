.method public isStrictForceUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->isForceUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
