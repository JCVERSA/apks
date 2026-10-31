.method public static j(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/snaptube/premium/configs/Config;->k5(Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "check_config_result"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o1()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->d(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "previous_upgrade_time"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->p1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "previous_version_code"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "trigger_tag"

    invoke-interface {v0, v1, p2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p2

    const-string v0, "config_result"

    invoke-interface {p2, v0, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p2

    const-string v0, "CanFullUpgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CanPathUpgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "config_type"

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->g(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/az7;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arg3"

    invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string v0, "arg4"

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string v0, "upgrade_md5"

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->f(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    invoke-interface {p2}, Lo/ah3;->reportEvent()V

    return-void
.end method
