.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->n()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget-object p1, Lo/et5;->a:Lo/et5;

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/et5;->c(Ljava/lang/String;)V

    return-void
.end method
