.method public final S0()Z
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ap3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
