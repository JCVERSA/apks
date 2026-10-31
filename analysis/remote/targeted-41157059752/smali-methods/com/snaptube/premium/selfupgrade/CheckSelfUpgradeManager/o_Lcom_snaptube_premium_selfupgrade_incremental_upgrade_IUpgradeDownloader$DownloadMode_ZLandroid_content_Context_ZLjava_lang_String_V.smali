.method public static o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLandroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    invoke-virtual {v0, p1, p4}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZLjava/lang/String;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$f;

    invoke-direct {v0, p2, p0, p3, p4}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$f;-><init>(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    return-void
.end method
