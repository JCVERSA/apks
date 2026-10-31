.method public final synthetic q0()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/ads/SplashAdManager;->j:Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isPreloadInterstitialOnAppBackgroundEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/ads/activity/SplashAdActivity;->c1()V

    :cond_0
    return-void
.end method
