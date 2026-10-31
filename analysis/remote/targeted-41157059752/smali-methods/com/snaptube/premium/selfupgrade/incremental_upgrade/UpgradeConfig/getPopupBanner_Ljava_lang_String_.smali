.method public getPopupBanner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->popupBannerUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
