.method public static s(Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$h;

    invoke-direct {v0, p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$h;-><init>(Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
