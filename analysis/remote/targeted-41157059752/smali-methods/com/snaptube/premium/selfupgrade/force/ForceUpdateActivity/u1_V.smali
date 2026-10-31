.method public u1()V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->r:Lo/m5;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lo/m5;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->d1()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->r:Lo/m5;

    if-nez v0, :cond_1

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lo/m5;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->r:Lo/m5;

    if-nez v0, :cond_2

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lo/m5;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getBigVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const v3, 0x7f1102db

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->r:Lo/m5;

    if-nez v0, :cond_3

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lo/m5;->k:Lo/xy8;

    iget-object v0, v0, Lo/xy8;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->o1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
