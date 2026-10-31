.method public static g0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPopupInterval()J

    move-result-wide v1

    const-string p0, "last_show_popup_self_upgrade_version"

    const-string v3, "last_show_popup_self_upgrade_time"

    invoke-static {v0, v1, v2, p0, v3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->l(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
