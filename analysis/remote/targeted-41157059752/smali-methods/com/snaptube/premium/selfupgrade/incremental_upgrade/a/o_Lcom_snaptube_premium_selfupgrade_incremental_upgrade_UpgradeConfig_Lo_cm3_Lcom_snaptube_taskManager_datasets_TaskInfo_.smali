.method public static o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lo/cm3;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/cm3;->j0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/cm3;->m0(Ljava/lang/String;)V

    invoke-static {}, Lo/az7;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/cm3;->v0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getUpdateTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canPatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPatchUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPatchMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/cm3;->y0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/cm3;->z0:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->usePatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    iput p0, p1, Lo/cm3;->A0:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p1, Lo/cm3;->A0:I

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_3
    :goto_0
    invoke-static {p1}, Lo/cm3;->c0(Lo/cm3;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    return-object p1
.end method
