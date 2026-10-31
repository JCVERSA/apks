.method public static m(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lo/hn1;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f110444

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/b88;->m(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
