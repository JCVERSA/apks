.method public final y0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ce;->a(Landroid/content/Context;)Lo/ca3;

    move-result-object v0

    invoke-interface {v0}, Lo/ca3;->j()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splashAdEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashAdManager"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
