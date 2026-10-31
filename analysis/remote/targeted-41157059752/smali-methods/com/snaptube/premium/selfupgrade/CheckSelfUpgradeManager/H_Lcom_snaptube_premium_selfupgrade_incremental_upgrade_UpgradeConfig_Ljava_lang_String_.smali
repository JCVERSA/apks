.method public static H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "ConfigIsNull"

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->update:Z

    const-string v1, "CannotUpgrade"

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->usePatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canPatchUpdate()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v1, "CanPathUpgrade"

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v1, "CanFullUpgrade"

    :cond_4
    return-object v1
.end method
