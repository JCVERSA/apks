.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->m1()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snaptube/base/BaseActivity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_update_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_update_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "UpgradeConfigSerializeException"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->L1(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivity;->e(Z)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->n1()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->w1()V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "compulsory_upgrade"

    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->n:Z

    invoke-static {p0, p1}, Lo/xi7;->c(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;

    invoke-direct {p1}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;-><init>()V

    new-instance v0, Lo/i80;

    invoke-direct {v0, p0}, Lo/i80;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->D2(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "from"

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->i1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->e1()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/xi7;->c(Landroid/content/Context;Z)Z

    move-result v1

    const-string v2, "is_not_an_official_version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/fragment/BaseDialogFragment;->E2(Landroidx/fragment/app/FragmentManager;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->K1()V

    return-void
.end method
