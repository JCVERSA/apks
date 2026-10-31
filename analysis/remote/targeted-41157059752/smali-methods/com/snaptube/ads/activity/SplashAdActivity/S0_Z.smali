.method public final S0()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/SplashAdView;->L1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
