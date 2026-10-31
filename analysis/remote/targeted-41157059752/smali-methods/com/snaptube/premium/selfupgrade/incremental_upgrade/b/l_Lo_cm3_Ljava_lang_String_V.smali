.method public static l(Lo/cm3;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$a;

    invoke-direct {v0, p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$a;-><init>(Lo/cm3;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
