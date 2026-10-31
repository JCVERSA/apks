.method public static x()V
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
