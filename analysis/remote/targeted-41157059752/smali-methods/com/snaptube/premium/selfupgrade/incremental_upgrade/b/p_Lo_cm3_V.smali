.method public p(Lo/cm3;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lo/cm3;

    invoke-direct {p1}, Lo/cm3;-><init>()V

    const-string v0, "info == null"

    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lo/cm3;->B0:J

    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$d;

    invoke-direct {v0, p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$d;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;Lo/cm3;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
