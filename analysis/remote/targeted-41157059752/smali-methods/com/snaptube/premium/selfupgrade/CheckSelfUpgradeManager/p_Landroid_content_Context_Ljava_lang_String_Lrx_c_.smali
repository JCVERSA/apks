.method public static p(Landroid/content/Context;Ljava/lang/String;)Lrx/c;
    .locals 1

    sget-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZLjava/lang/String;)Lrx/c;

    move-result-object p0

    return-object p0
.end method
