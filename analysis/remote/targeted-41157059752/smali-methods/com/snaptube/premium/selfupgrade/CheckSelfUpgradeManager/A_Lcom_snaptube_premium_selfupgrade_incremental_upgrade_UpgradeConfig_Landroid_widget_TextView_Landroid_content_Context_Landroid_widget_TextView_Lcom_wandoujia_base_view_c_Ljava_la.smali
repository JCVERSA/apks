.method public static A(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->P(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v3

    invoke-static {v3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lo/an5;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p0, p4, v0

    const p0, 0x7f110765

    invoke-virtual {p2, p0, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->i0(Landroid/widget/TextView;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getBigVersion()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const v0, 0x7f110735

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->h0(Landroid/widget/TextView;)V

    invoke-static {p2}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v4, p2

    check-cast v4, Landroid/app/Activity;

    const p1, 0x7f11072d

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$c;

    move-object v2, p3

    move-object v5, p0

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$c;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Landroid/app/Activity;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p2, 0x0

    const/4 p5, -0x1

    invoke-virtual {p4, p5, p1, p3, p2}, Lcom/wandoujia/base/view/c;->s(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    invoke-virtual {p4}, Lcom/wandoujia/base/view/c;->show()V

    invoke-static {p0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->u(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Z)V

    :cond_1
    return-void
.end method
