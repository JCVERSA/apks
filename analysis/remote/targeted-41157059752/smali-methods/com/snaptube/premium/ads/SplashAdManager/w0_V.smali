.method public final w0()V
    .locals 3

    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snaptube/premium/ads/SplashAdManager$f;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/ads/SplashAdManager$f;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->n(Ljava/lang/String;Lo/lw2;)V

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snaptube/premium/ads/SplashAdManager$g;

    invoke-direct {v2, p0}, Lcom/snaptube/premium/ads/SplashAdManager$g;-><init>(Lcom/snaptube/premium/ads/SplashAdManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->n(Ljava/lang/String;Lo/lw2;)V

    return-void
.end method
