.method public final z1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "click_upgrade_page_faq"

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->m(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
