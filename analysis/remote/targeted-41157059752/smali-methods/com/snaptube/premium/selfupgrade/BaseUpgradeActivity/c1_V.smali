.method public final c1()V
    .locals 7

    iget-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->P1()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->m(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->Y0()V

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->J()Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->g1()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->n:Z

    iget-object v5, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i:Ljava/lang/String;

    const-string v6, "upgrade_main_page"

    invoke-virtual/range {v1 .. v6}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->B(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->l:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->n:Z

    return-void
.end method
