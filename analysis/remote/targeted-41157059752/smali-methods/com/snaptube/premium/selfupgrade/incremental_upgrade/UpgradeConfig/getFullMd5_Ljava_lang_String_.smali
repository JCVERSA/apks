.method public getFullMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->md5:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
