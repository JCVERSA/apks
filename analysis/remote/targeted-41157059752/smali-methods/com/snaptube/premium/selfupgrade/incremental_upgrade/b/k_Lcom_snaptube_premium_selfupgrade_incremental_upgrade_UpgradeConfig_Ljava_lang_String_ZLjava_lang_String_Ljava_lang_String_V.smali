.method public static k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v6, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$g;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
