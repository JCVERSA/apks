.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1204e3

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object p1

    const-string v0, "$AppViewScreen"

    invoke-interface {p1, v0}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object p1

    const-string v0, "not_an_official_version_popup"

    invoke-interface {p1, v0}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object p1

    const-string v0, "position_source"

    invoke-virtual {p0}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->I2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p1

    const-string v0, "from"

    invoke-direct {p0}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->H2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p1

    invoke-interface {p1}, Lo/ah3;->reportEvent()V

    return-void
.end method
