.method public static f0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 1

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->R(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
