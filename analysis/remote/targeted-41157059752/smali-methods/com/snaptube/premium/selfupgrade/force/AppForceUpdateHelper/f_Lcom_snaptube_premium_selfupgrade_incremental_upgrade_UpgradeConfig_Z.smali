.method public final f(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->l()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
