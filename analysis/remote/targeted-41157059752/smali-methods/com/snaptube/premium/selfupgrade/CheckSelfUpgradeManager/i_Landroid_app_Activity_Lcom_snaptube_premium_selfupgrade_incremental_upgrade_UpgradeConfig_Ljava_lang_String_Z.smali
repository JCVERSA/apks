.method public static i(Landroid/app/Activity;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->r(Landroid/app/Activity;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkMd5Correct()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->deleteApk()Z

    invoke-static {p0, p2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->r(Landroid/app/Activity;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
