.method public final f0()Lo/ic;
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->e0()Lo/ic;

    move-result-object v0

    sget-object v1, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {v1, v0}, Lo/ic$a;->a(Lo/ic;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->b(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object v0

    return-object v0
.end method
