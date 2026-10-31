.method public canPatchUpdate()Z
    .locals 3

    const/4 v0, 0x0

    return v0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "ready"

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->status:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
