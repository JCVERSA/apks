.method public static E(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;-><init>()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->setVersionCode(I)V

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->setConfig(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    new-instance p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$7;

    invoke-direct {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$7;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0}, Lo/j23;->i(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
