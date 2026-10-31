.method public static k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lo/rh8;->b(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->update:Z

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->usePatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canPatchUpdate()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result p0

    return p0
.end method
