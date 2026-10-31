.method public getVersionCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Lo/de5;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
