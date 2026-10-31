.method public final e1(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->n1()V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->S0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/utils/RxBus$d;

    invoke-static {p1}, Lo/jn7;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/ads/activity/SplashAdActivity;->I0()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SplashAdActivity"

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-string p1, "ad_splash_activity_finish"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    const-string p1, "ad_splash_activity_finish_after_click"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    const-string p1, "ad_splash_activity_finish_after_close"

    invoke-direct {p0, p1}, Lcom/snaptube/ads/activity/SplashAdActivity;->j1(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
