.method public final d2()V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "$AppViewScreen"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "$url"

    const-string v2, "/compulsory_upgrade"

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/xi7;->c(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_not_an_official_version"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    return-void
.end method
