.method public static q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;ZLjava/lang/String;Ljava/lang/String;)Lo/cm3;
    .locals 2

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/cm3;

    invoke-direct {v0}, Lo/cm3;-><init>()V

    invoke-static {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lo/cm3;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->PATCH:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput-boolean p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/cm3;->e0(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->g(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/cm3;->g0(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/cm3;->f0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullFileSize()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lo/cm3;->i0(J)V

    invoke-virtual {v0, p2}, Lo/cm3;->k0(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lo/cm3;->l0(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "upgradeConfig not ready for download"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
