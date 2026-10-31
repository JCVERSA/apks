.method public getNotifyInterval()J
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->notifyInterval:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method
