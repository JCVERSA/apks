.method public getFilePath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    return-object v0
.end method
