.method public final r(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V
    .locals 4

    const-string v0, "download_start_cancel"

    const-string v1, "build_taskinfo_error"

    sget-object v2, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->UNKNOWN:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-eq p1, v2, :cond_0

    sget-object v3, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-eq v2, v3, :cond_4

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->g:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isEnableAppUpgradeDownloadWithMobile()Z

    move-result p1

    :try_start_0
    iget-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->l:Ljava/lang/String;

    invoke-static {p2, p1, p3, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;ZLjava/lang/String;Ljava/lang/String;)Lo/cm3;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "IncrementalDownloader"

    const-string v0, "taskInfo not valid"

    invoke-static {p3, v0}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lo/cm3;

    invoke-direct {p3}, Lo/cm3;-><init>()V

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lo/cm3;

    invoke-direct {p1}, Lo/cm3;-><init>()V

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f110533

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->p(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-void

    :cond_4
    :goto_1
    new-instance p1, Lo/cm3;

    invoke-direct {p1}, Lo/cm3;-><init>()V

    iget-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    iput-object p3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->g(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/cm3;->g0(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/cm3;->f0(Ljava/lang/String;)V

    if-nez p2, :cond_5

    const-string p3, ""

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {p1, p3}, Lo/cm3;->m0(Ljava/lang/String;)V

    if-nez p2, :cond_6

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullFileSize()J

    move-result-wide v1

    :goto_3
    invoke-virtual {p1, v1, v2}, Lo/cm3;->i0(J)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_7
    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
