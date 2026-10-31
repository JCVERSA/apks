.method public static x(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
