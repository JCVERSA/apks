.method public static V(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_apk_downloaded_upgrade_config"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    sput-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->w(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    return-void
.end method
