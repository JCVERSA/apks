.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const v0, 0x7f1204e3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "$AppViewScreen"

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "not_an_official_version_popup"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "position_source"

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->I2()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p1, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "from"

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->H2()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p1, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lo/ah3;->reportEvent()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
