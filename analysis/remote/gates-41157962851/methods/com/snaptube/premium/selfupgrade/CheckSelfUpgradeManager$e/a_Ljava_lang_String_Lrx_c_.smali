.method public a([Ljava/lang/String;)Lrx/c;
    .locals 9

    const-string v0, "upgrade_6"

    invoke-static {v0}, Lo/zp6;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->v4()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->NEWEST:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {p1}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0}, Lo/sn;->A()Lo/fp5;

    move-result-object v1

    const-string v0, "Upgrade"

    iget-object v2, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/matrix/util/DeviceUtil;->f(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/matrix/util/DeviceUtil;->c(Landroid/content/Context;)Lcom/tencent/matrix/util/DeviceUtil$LEVEL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/matrix/util/DeviceUtil$LEVEL;->getValue()I

    move-result v8

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v4, 0x1

    aget-object v4, p1, v4

    const/4 v5, 0x0

    aget-object p1, p1, v5

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    move-object v3, v4

    move-object v4, p1

    invoke-interface/range {v1 .. v8}, Lo/fp5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lrx/c;

    move-result-object p1

    return-object p1
.end method
