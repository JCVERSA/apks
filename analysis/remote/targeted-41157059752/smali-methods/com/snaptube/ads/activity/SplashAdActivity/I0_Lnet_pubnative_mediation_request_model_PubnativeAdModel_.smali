.method public final I0()Lnet/pubnative/mediation/request/model/PubnativeAdModel;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    instance-of v1, v0, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/SplashAdView;->getAdData()Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
