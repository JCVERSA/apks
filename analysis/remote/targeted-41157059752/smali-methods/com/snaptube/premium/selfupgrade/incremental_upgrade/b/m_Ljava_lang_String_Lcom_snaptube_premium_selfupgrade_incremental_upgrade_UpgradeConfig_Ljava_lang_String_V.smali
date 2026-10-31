.method public static m(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$j;

    invoke-direct {v0, p1, p0, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$j;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
