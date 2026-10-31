.method public final o1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i:Ljava/lang/String;

    const-string v1, "any_page_visible_force"

    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i:Ljava/lang/String;

    const-string v1, "any_page_visible_normal"

    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f110216

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->j1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
