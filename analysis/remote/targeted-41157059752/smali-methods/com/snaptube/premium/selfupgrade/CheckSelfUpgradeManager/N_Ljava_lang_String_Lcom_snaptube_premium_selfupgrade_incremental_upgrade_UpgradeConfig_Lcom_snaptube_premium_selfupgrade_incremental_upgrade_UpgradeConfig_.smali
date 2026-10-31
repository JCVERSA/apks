.method public static N(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 2

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance p1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$6;

    invoke-direct {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$6;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lo/j23;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->getVersionCode()I

    move-result p1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v1

    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->getConfig()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object p0

    return-object p0

    :catchall_0
    :cond_3
    :goto_0
    return-object v0
.end method
