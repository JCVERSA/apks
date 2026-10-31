.method public final x2(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/snaptube/premium/dialog/UpgradeDialog;

    invoke-direct {v0}, Lcom/snaptube/premium/dialog/UpgradeDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->E2(Landroidx/fragment/app/FragmentManager;)Z

    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->U(Ljava/lang/String;)V

    return-void
.end method
