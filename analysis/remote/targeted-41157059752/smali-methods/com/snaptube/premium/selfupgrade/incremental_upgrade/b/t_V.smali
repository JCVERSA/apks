.method public static t()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "show_new_version_tips"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    return-void
.end method
