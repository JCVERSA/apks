.method public static h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
