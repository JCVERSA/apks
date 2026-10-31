.method public u1()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;->q:Lo/xh8;

    if-nez v2, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    iget-object v3, v2, Lo/xh8;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->d1()Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lo/xh8;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getBigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->c2()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lo/xh8;->i:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x7f110734

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    aput-object v3, v7, v0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v4, 0x7f110735

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lo/xh8;->j:Lo/xy8;

    iget-object v0, v0, Lo/xy8;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->o1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
