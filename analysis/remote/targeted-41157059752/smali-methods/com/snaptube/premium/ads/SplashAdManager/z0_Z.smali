.method public z0()Z
    .locals 2

    sget-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->I2()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->b:Ljava/lang/String;

    const-class v1, Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/log/AppStartRecorder;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
