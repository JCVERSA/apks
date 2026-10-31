.method public static M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->O()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->N(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    return-object v0
.end method
