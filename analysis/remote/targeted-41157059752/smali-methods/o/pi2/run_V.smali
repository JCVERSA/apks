.method public run()V
    .locals 4

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    const/4 v1, 0x0

    const-string v2, "cold_start"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZZLjava/lang/String;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/pi2$a;

    invoke-direct {v1}, Lo/pi2$a;-><init>()V

    invoke-virtual {v0, v1}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->y()V

    return-void
.end method
