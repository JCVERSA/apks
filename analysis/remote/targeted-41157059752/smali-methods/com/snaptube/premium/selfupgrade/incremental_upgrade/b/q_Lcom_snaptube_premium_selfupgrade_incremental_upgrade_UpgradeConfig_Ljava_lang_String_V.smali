.method public static q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$c;

    invoke-direct {v0, p1, p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$c;-><init>(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
