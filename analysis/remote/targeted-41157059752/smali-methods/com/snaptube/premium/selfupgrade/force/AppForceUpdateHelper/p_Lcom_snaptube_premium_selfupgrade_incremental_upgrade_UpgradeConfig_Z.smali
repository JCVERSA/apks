.method public final p(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 1

    invoke-static {p1}, Lo/rh8;->b(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isNormalUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->g0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
