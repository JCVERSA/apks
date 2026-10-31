.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "check_config"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "config_type"

    invoke-interface {v0, v1, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->d(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "previous_upgrade_time"

    invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->p1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "previous_version_code"

    invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string v0, "trigger_tag"

    invoke-interface {p0, v0, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method
