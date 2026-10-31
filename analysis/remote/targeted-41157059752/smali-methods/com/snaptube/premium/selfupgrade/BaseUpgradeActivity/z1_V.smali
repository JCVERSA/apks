.method public final z1()V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i:Ljava/lang/String;

    const-string v2, "click_upgrade_page_faq"

    invoke-static {v2, v0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->m(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    return-void
.end method
