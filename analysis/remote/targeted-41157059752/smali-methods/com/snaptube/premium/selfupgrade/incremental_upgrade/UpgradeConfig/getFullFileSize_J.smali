.method public getFullFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->size:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
