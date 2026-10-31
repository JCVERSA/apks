.method public final s(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-virtual {v1, v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->p(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1, v0, p2}, Lcom/snaptube/premium/NavigationManager;->l0(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
