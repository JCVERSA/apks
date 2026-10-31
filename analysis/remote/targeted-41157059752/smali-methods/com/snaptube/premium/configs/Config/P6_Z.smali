.method public static P6()Z
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->f3()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Config"

    if-eqz v0, :cond_0

    const-string v0, "can`t show push permission as disable the feature"

    invoke-static {v2, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->e4()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string v0, "request push permission as have no permission"

    invoke-static {v2, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    invoke-static {}, Lo/td5;->n()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "request push permission as download channel disable"

    invoke-static {v2, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    return v1
.end method
