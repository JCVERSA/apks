.method public v0()V
    .locals 4

    sget-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->x0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u3()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->h(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/iq7;->c(Ljava/lang/String;)Lo/iq7$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0}, Lo/sn;->H0()Lo/gb;

    move-result-object v0

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object v1

    const-string v2, "ad_request_scene"

    const-string v3, "application_launch"

    invoke-virtual {v1, v2, v3}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/gb;->c(Lo/jb;)V

    :cond_1
    :goto_0
    return-void
.end method
