.method public onBackPressed()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->i:Lo/iq7$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v0, Lo/iq7$b;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->l:Landroid/view/View;

    instance-of v1, v0, Lcom/snaptube/ads/view/SplashAdView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/snaptube/ads/view/SplashAdView;

    invoke-virtual {v0}, Lcom/snaptube/ads/view/SplashAdView;->P1()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v2, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/b7;->a(Ljava/lang/String;)Lo/h9;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-eqz v2, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "back_pressed"

    invoke-virtual {v2, v4, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lo/h9;->c:Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    const-string v2, "trigger_tag"

    const-string v3, "system_back"

    invoke-virtual {v1, v2, v3}, Lnet/pubnative/mediation/request/model/PubnativeAdModel;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/view/SplashAdView;->x2(Landroid/view/View;)V

    :cond_2
    return-void
.end method
