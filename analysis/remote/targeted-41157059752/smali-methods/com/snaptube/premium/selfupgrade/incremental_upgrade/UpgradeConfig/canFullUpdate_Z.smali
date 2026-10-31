.method public canFullUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
