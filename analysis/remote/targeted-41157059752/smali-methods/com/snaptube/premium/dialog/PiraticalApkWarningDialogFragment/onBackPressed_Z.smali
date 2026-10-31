.method public onBackPressed()Z
    .locals 7

    const-string v0, "compulsory_upgrade"

    invoke-direct {p0}, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->H2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->f:J

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    sget-object v0, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->h()V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;->f:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110667

    invoke-static {v0, v1}, Lo/b88;->l(Landroid/content/Context;I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
