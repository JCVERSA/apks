.method public static F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 2

    const-string v0, "last_apk_downloaded_upgrade_config"

    sget-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->N(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    return-object v0
.end method
