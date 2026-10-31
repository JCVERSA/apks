.method public static U(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "intent_upgrade_dialog_exposure"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "arg1"

    invoke-interface {v0, v1, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method
