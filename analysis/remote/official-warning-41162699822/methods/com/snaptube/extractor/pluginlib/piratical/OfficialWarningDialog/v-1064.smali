.method public final v()V
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object v0, Lo/et5;->a:Lo/et5;

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/et5;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    const-string v3, "official_web_url"

    invoke-static {v2, v3}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "btnDownload"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->c:Landroid/widget/Button;

    if-nez v0, :cond_1

    const-string v0, "btnUninstall"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    sget-object v0, Lo/mg8;->a:Lo/mg8;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
