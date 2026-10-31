.method public static r(ZLjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "upgrade_install"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "config_type"

    invoke-interface {v0, v1, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string v0, "install_apk_from"

    invoke-interface {p0, v0, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-static {}, Lo/sq5;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "can_write_external_storage"

    invoke-interface {p0, v0, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method
