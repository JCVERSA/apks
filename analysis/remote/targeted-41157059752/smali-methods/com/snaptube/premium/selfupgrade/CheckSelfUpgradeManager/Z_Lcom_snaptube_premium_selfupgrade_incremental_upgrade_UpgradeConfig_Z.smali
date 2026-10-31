.method public static Z(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isStop()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->E(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->O()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->w(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->X(J)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->V(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->O()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x0

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p0
.end method
