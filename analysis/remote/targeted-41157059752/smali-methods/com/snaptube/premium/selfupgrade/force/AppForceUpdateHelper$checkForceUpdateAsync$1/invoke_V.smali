.method public final invoke()V
    .locals 4

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;->$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v2

    const-string v3, "any_page_visible"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->r(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1;->$activity:Landroid/app/Activity;

    const-string v2, "any_page_visible_normal"

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->e(Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
