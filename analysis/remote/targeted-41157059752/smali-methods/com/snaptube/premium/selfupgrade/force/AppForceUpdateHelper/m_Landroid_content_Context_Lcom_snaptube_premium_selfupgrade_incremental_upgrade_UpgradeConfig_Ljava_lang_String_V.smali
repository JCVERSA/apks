.method public final m(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->s:Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity$a;->a(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->i()V

    return-void
.end method
