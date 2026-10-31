.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/snaptube/ads/SplashScreenWrapper;->a:Lcom/snaptube/ads/SplashScreenWrapper;

    const/4 v1, 0x0

    const-string v2, "SplashAdActivity:onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ads/SplashScreenWrapper;->i(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->m:Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;

    invoke-virtual {v0}, Lcom/snaptube/ads/activity/SplashImpressionSceneTracker;->a()V

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->c:Lo/hh3;

    invoke-interface {v0}, Lo/hh3;->c()Z

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->f:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->d:Lo/b7;

    iget-object v1, p0, Lcom/snaptube/ads/activity/SplashAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/b7;->c(Ljava/lang/String;)Lo/h9;

    :cond_1
    return-void
.end method
