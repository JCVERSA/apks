.method public static R(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->j(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {p0}, Lo/rh8;->a(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
