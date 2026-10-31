.method public final D(ZLcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Ljava/lang/String;Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 0

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne p2, p1, :cond_2

    const-string p1, "upgrade_self"

    invoke-static {p4, p1}, Lo/dp3;->d(Lo/cm3;Ljava/lang/String;)Lcom/snaptube/premium/utils/install/InstallParams;

    move-result-object p1

    invoke-static {p1}, Lo/ap3;->f(Lcom/snaptube/premium/utils/install/InstallParams;)Z

    invoke-static {p4, p5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->s(Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    :cond_2
    invoke-virtual {p4}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->setFilePath(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->W(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    :cond_3
    :goto_0
    return-void
.end method
