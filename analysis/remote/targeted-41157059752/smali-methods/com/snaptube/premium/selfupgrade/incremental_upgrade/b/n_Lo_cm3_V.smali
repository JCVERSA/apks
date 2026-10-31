.method public n(Lo/cm3;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lo/cm3;

    invoke-direct {p1}, Lo/cm3;-><init>()V

    const-string v0, "info == null"

    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->b:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$e;

    invoke-direct {v0, p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$e;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;Lo/cm3;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->b:Z

    return-void
.end method
