.method public static e(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)J
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullFileSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
