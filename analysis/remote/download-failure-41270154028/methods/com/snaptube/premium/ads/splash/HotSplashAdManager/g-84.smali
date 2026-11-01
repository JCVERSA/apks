.method public static final g()V
    .locals 4

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/ads/splash/HotSplashAdManager;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lo/od;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snaptube/premium/ads/SplashAdManager;->a0()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->h(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sn;

    invoke-interface {v1}, Lo/sn;->H0()Lo/gb;

    move-result-object v1

    sget-object v2, Lo/jb;->e:Lo/jb$a;

    invoke-virtual {v2, v0}, Lo/jb$a;->a(Ljava/lang/String;)Lo/jb;

    move-result-object v0

    const-string v2, "ad_request_scene"

    const-string v3, "enter_background"

    invoke-virtual {v0, v2, v3}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/gb;->c(Lo/jb;)V

    return-void
.end method
