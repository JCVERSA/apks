.method public final e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->h:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "config"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
