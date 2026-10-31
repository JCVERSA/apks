.method public isStrongUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPriority()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;->STRONG:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
