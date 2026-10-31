.method public static W(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_apk_downloaded_upgrade_config"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isStop()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->E(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x0

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p0
.end method
