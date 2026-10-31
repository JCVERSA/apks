.method public final N2(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent_upgrade_dialog"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->S(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "click_intent_upgrade_dialog_update_now"

    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->q(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method
