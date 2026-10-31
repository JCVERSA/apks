.method public static y()V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->x1()I

    move-result v0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v1

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/snaptube/premium/configs/Config;->l6(I)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lcom/snaptube/premium/configs/Config;->l6(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/snaptube/premium/configs/Config;->h6(J)V

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->i6(I)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->X(J)V

    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$i;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$i;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method
