.method public final j1()Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExploreActivity;->w:Z

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->s2()V

    invoke-static {p0}, Lo/pq5;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/ads/SplashAdManager;->C0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/snaptube/premium/app/PhoenixApplication;->E:Lcom/snaptube/premium/log/LaunchLogger;

    const-string v2, "feed_first_card_exposure_after_splash_ad"

    invoke-virtual {v1, v2}, Lcom/snaptube/premium/log/LaunchLogger;->I(Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lo/bq0;->D()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lo/bq0;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/bq0;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->C1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExploreActivity;->u2()V

    invoke-static {v2}, Lo/bq0;->y0(Z)V

    invoke-static {v2}, Lo/bq0;->w0(Z)V

    :cond_1
    invoke-static {v0}, Lo/bq0;->u0(Z)V

    return v2
.end method
